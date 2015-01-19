import os, re, json, gc, config
from lxml import html

class Scraper:

  def __init__(self):
    import kmap_ids
    self.kmaps = kmap_ids.kmaps
    
  def test(self):
    print 'Places',len(self.kmaps['places'])
    print 'Subjects',len(self.kmaps['subjects'])
    
  def scrape(self):
    import urllib
    for domain in self.kmaps.keys():
      for kid in self.kmaps[domain]:
        kmap_key = domain + '-' + str(kid)
        file_url1 = config.kmap_url1 % (domain,kid)
        file_name1 = config.rawdir + '/' + kmap_key + '.json'
        urllib.urlretrieve(file_url1,file_name1)
        file_url2 = config.kmap_url2 % (domain,kid)
        file_name2 = config.rawdir + '/' + kmap_key + '-info.json'
        urllib.urlretrieve(file_url2,file_name2)
        
class Decoder:

  #def __init__(self):

  def decode(self):
    for filename in os.listdir(config.rawdir):
      if not(re.match('(places|subjects)-(\d+)\.json',filename)): continue
      outstr = ''
      infile = open(config.rawdir +'/'+ filename,'r')
      for line in infile.readlines():
        line = re.sub(r'\\t+',' ',line)
        line = re.sub(r'\\n+',' ',line)
        line = re.sub(r'\s+',' ',line)
        outstr += line 
      infile.close()

      #pydoc  = json.loads(outstr,encoding='utf-8')
      #outstr = json.dumps(pydoc, indent=1).decode('unicode-escape').encode('utf8') # EXCELLENT

      outfile = open(config.srcdir +'/'+ filename, 'w')
      outfile.write(outstr)
      outfile.close()
      
class Booker:

  def __init__(self):
    self.srcdir = config.srcdir
    self.infdir = config.infdir
    self.outdir = config.outdir
    
  def bookem(self):
    for filename in os.listdir(self.srcdir):
      if not(re.match('(places|subjects)-(\d+)\.json',filename)): continue
      
      self.domain, self.kid, foo = re.split(r'[.-]',filename)
      self.key     = self.domain + '-' + self.kid
      fdata        = open(self.srcdir+'/'+filename,'r').read()
      doc          = []
      try:    
        doc = json.loads(fdata,encoding='utf-8')
      except:
        print self.domain, self.kid, 'is not a doc'
        continue
      if 'descriptions' not in doc:
        print "No description for", self.key
        # Consider grabbing from the nested_descriptions key of the info file
        continue
      for n, desc in enumerate(doc['descriptions']):
        book = Book()
        book.title = desc.get('title') 
        if (book.title is None) or (re.match(r'^\s*Essay\s*$', book.title)):
          kdata = ''
          kmap_info = {}
          try:
            kdata = open(self.infdir + '/' + self.key + '-info.json', 'r').read()
            kmap_info = json.loads(kdata,encoding='utf-8')
            book.title = kmap_info.get('feature').get('header')
            del kdata, kmap_info
            gc.collect()
          except:
            book.title = 'Untitled'
        book.date     = desc.get('created_at')
        book.authors  = desc.get('authors')
        book.body     = desc.get('content')
        book.kid      = self.kid
        book.domain   = self.domain
        book.desc_n   = n
        book.outdir   = self.outdir
        #book.losers   = self.losers
        book.make_nodes()
        book.print_jdoc()
        del book
        gc.collect()
        
class Book:

  def __init__(self,title=''):
    self.title    = title
    self.domain   = ''
    self.kid      = 0
    self.desc_n   = 0
    self.dates    = []
    self.authors  = []
    self.body     = '' # Temporary storage for creating nodes
    self.nodes    = []
    self.outdir   = ''
    self.losers   = []

  def make_nodes(self):    
    tree = html.document_fromstring(self.body)
    tree = self.prune_tree(tree)

    # Find the right xpath
    myxpath = ''
    first = tree.xpath('(/html/body/*)[1]')[0]
    myclass = first.get('class')
    if (first.tag == 'div' and myclass == 'essay-body'):
      myxpath = '//div[@class="essay-body"]/*'
    elif (first.tag == 'div' and myclass == 'essay-body tib'):
      myxpath = '//div[@class="essay-body tib"]/*'
    elif (first.tag == 'div'):
      myxpath = '/html/body/*'
    else:
      myxpath = '/html/body/*'

    # Chop the tree into pages
    pages = []
    page_index = 0
    pages.append({
      'title': self.title,
      'index': 0,
      'parent_index': -1,
      'body': ''
    })

    page_level = [-1 for x in range(8)]
    
    for el in tree.xpath(myxpath):

      elclass = el.get('class')
      m = re.findall(r'^h(\d)',el.tag)
      if (m):
        page_index += 1
        level = int(m[0])
        if (elclass == 'h1'): level = 1
        page_level[level] = page_index
        parent_index = page_level[level - 1]
        if parent_index < 0: parent_index = 0
        eltitle = el.text_content() # Need to trim, decode entities, etc. ? 
        pages.append({
          'title': eltitle,
          'index': page_index,
          'parent_index': parent_index,
          'body': ''
        })
      else: 
        content = html.tostring(el,with_tail=0,pretty_print=0,method='html',encoding='utf-8') # Write a cleaning function  
        content = content.replace('"', '\\"')
        pages[page_index]['body'] += content 
      
    self.nodes = pages
    
  def prune_tree(self,tree):
    for loser in config.losers:
      els = tree.xpath(loser)
      for el in els:
        el.getparent().remove(el)
    return tree

  def print_jdoc(self):
    outbook = {
      'meta': {
        'title':    self.title,
        'domain':   self.domain,
        'kid':      self.kid,
        'date':     self.date,
        'authors':  self.authors
      },
      'nodes':      self.nodes
    }
    
    jdoc = json.dumps(outbook, indent=1).decode('unicode-escape').encode('utf8') # EXCELLENT
    outfile = open(self.outdir+'/'+self.domain+'-'+self.kid+'-'+str(self.desc_n)+'.json','w')
    outfile.write(jdoc)
    outfile.close()
      
