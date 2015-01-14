import os, re
from json import JSONEncoder, JSONDecoder
from lxml import html

srcdir    = "02-raw-json-decoded"
outdir    = "03-books-json"
filemask  = "*.json"  
filenames = os.listdir(srcdir)

for filename in filenames:
    if not(re.match('(places|subjects)-(\d+)\.json',filename)): continue
    fparts  = re.split(r'[.-]',filename)
    domain  = fparts[0]
    kid     = fparts[1]
    fdata   = open(srcdir+'/'+filename,'r').read()
    jdoc    = []
    try:
      jdoc    = JSONDecoder().decode(fdata)
    except:
      print domain,kid,"not a jdoc"
      continue
    descn   = -1
    for desc in jdoc['descriptions']:
      descn = descn + 1
      if descn > 1:
        print domain,kid,descn
#      html = parser.feed(desc)
#      print html
    
    

