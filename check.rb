require 'open-uri'

STREAM_URL = 'https://www.uniqueradio.jp/agplayer5/hls/mbr-ff.m3u8'
BAD_URL = 'https://example.com/a'

begin
  uri = URI.parse(STREAM_URL)
  res = uri.open
rescue => e
  p res.status[0]
  p res.read
end

begin
  bad_uri = URI.parse(BAD_URL)
  bad_res = bad_uri.open

  p bad_res.status[0]
  p bad_res.read
rescue => e
  p e
end

