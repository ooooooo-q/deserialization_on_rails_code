require 'plist' 

class Cat
  def initialize(color)
    @color = color
  end
end

cat = Cat.new('white')

xml = Plist::Emit.dump(cat, true)
puts xml
# <?xml version="1.0" encoding="UTF-8"?>
# <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
# <plist version="1.0">
# <!-- The <data> element below contains a Ruby object which has been serialized with Marshal.dump. -->
# <data>
# BAhvOghDYXQGOgtAY29sb3JJIgp3aGl0ZQY6BkVU
# </data>
# </plist>

data = Plist.parse_xml(xml);
puts data
# => #<Cat:0x000000014725b4b0>