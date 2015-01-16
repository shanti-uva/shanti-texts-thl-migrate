import os, re, json, gc
from lxml import html

class Booker:

  def __init__(self,srcdir,outdir,losers):
    self.srcdir = srcdir
    self.outdir = outdir
    self.losers = losers
    
  def proc(self):
    for filename in os.listdir(self.srcdir):
      if not(re.match('(places|subjects)-(\d+)\.json',filename)): continue
      fparts       = re.split(r'[.-]',filename)
      self.domain  = fparts[0]
      self.kid     = fparts[1]
      fdata        = open(self.srcdir+'/'+filename,'r').read()
      doc         = []
      try:    
        doc = json.loads(fdata,encoding='utf-8')
      except:
        print self.domain,self.kid,"not a doc"
        continue
      for n, desc in enumerate(doc['descriptions']):
        book = Book()
        book.title    = desc.get('title')
        book.date     = desc.get('created_at')
        book.authors  = desc.get('authors')
        book.body     = desc.get('content')
        book.kid      = self.kid
        book.domain   = self.domain
        book.desc_n   = n
        book.outdir   = self.outdir
        book.losers   = self.losers
        book.make_nodes()
        book.print_jdoc() # Maybe make this a method of Booker
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

      m = re.findall(r'^h(\d)',el.tag)
      elclass = el.get('class')
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
        content = html.tostring(el,with_tail=0,pretty_print=1,method='xml',encoding='utf-8') # Write a cleaning function  
        content = content.replace('"', '\\"')
        pages[page_index]['body'] += content 
      
    self.nodes = pages
    
  def prune_tree(self,tree):
    for loser in self.losers:
      els = tree.xpath(loser)
      for el in els:
        el.getparent().remove(el)
    return tree

  def print_jdoc(self):
    # OK, now use the body
    outbook = {
      'meta': {
        'title':    self.title,
        'domain':   self.domain,
        'kid':      self.kid,
        'dates':    self.dates,
        'authors':  self.authors
      },
      'nodes':      self.nodes
    }
    
    jdoc = json.dumps(outbook, indent=1).decode('unicode-escape').encode('utf8') # EXCELLENT
    outfile = open(self.outdir+'/'+self.domain+'-'+self.kid+'-'+str(self.desc_n)+'.json','w')
    outfile.write(jdoc)
    outfile.close()
      
