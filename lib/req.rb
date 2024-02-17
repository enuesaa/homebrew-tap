require 'net/http'

url = URI.parse('http://example.com/')
http = Net::HTTP.new(url.host, url.port)

req = Net::HTTP::Get.new(url.path)
res = http.request(req)

puts "Response Code: #{res.code}"
