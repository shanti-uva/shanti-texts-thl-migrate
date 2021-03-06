kmap_url1  = 'http://%s.kmaps.virginia.edu/features/%s/descriptions.json'
kmap_url2  = 'http://%s.kmaps.virginia.edu/features/%s.json'

rawdir    = '01-raw-json'
infdir    = "01-raw-json-info"
srcdir    = "02-raw-json-decoded"
outdir    = "03-books-json"

losers = [
  '//table[@class="navarrows"]',
  '//*[@id="chap-id"]', 
  '//*[@id="chapRefWindow"]',
  '//p[@class="view-essay-in-publication"]',
  '//*[@id="essay-head2"]',
  '//*[@class="copyright"]',
  '//*[@class="author"]',
  '//*[@class="biblref"]',
  '//*[@class="chap-id"]',
  '//*[@class="chapter"]',
  '//*[@class="description-title"]',
  '//*[@class="by"]',
  '//*[@class="content_by"]',
  '//*[@class="last_updated"]',
  '//*[@id="_mcePaste"]',
]
