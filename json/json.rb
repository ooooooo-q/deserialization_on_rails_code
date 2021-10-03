require 'json'

class Cat
  def self.json_create(o)
    new(o["c"])
  end

  def initialize(color)
    @color = color
  end
end

puts JSON.load('{"json_class":"Cat","c":"white"}')
# => <Cat:0x00007ffa7305a7d8>

puts JSON.parse('{"json_class":"Cat","c":"white"}')
# => {"json_class"=>"Cat", "c"=>"white"}

puts JSON.parse('{"json_class":"Cat","c":"white"}', create_additions: true)
# => <Cat:0x00007ffa7305a210>