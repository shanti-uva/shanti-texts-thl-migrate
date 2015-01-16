from booker import Booker

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

booker = Booker(srcdir, outdir, losers)
booker.proc()
