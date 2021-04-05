require 'open-uri'
require 'json'
require 'dotenv'

STREAM_URL = 'https://www.uniqueradio.jp/agplayer5/hls/mbr-ff.m3u8'
Dotenv.load

begin
  uri = URI.parse(STREAM_URL)
  res = uri.open
rescue => e
  data = { 'text' => "配信 URL のレスポンスが #{e} となっています。確認してください。" }
  reqest_url = ENV['URL']
  uri = URI.parse(reqest_url)
  Net::HTTP.post_form(uri, {"payload" => data.to_json})
end

