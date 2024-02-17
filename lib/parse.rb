require 'json'

rawdata = File.read('pinit.json')
data = JSON.parse(rawdata)

puts data['name']
