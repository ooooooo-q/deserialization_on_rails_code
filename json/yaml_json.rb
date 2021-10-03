require 'yaml'
require 'json'

json_str = JSON.dump({cat: [1, 2, nil]})
puts json_str
# => {"cat":[1,2,null]}

puts YAML.load(json_str)
# => {"cat"=>[1, 2, nil]}