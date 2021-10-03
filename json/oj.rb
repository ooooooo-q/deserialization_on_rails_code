require 'oj'

class Cat
   attr_reader :color

   def initialize(color)
     @color = color
   end

end

cat = Cat.new('white')

dump_str = Oj.dump(cat)
p dump_str
# => "{\"^o\":\"Cat\",\"color\":\"white\"}"

cat_loaded = Oj.load(dump_str)
p cat_loaded
# => #<Cat:0x00007fb33808a668 @color="white">

compat_cat_loaded = Oj.load(dump_str, mode: :compat)
p compat_cat_loaded
# => {"^o"=>"Cat", "color"=>"white"}