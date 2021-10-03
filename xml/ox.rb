require 'ox'

class Cat
  def initialize(color)
    @color = color
  end
end

cat = Cat.new('white')

xml = Ox.dump(cat, :indent => 2)
puts xml
# <o c="Cat">
#   <s a="@color">white</s>
# </o>

puts Ox.load(xml)
# => <Ox::Element:0x00007f8b850f3328>

puts Ox.load(xml, mode: :hash_no_attrs)
# => {:o=>{:s=>"white"}}

puts Ox.load(xml, :mode => :object)
# => #<Cat:0x00007f8b850f2db0>

puts Ox.parse_obj(xml)
# => #<Cat:0x00007fd7500b7910>

xml = <<XML
<?ox mode="object" effort="strict" circular="false" xsd_date="false" ?>
<o c="Cat">
  <s a="@color">white</s>
</o>
XML

puts Ox.load(xml)
# => #<Cat:0x00007fae549c8d58>
# XML側のmodeの指定が反映されている

puts Ox.load(xml, mode: :hash_no_attrs)
# => {:o=>{:s=>"white"}}

puts Ox.load(xml, :mode => :object)
# => #<Cat:0x00007f8b850f2db0>

puts Ox.parse_obj(xml)
# => #<Cat:0x00007fd7500b7910>