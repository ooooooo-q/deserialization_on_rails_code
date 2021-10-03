require 'json'

puts 'abc'.to_json_raw_object
# => {"json_class"=>"String", "raw"=>[97, 98, 99]}

puts JSON.load(JSON.dump('abc'.to_json_raw_object))
# => "abc"