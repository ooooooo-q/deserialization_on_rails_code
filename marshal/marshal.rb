class Cat
   attr_reader :color

   def initialize(color)
     @color = color
   end
end

cat = Cat.new('white')
p cat
# => #<Cat:0x00007fb97f80f120 @color="white">

# シリアライズ
dump_str = Marshal.dump(cat)
p dump_str
# => "\x04\bo:\bCat\x06:\v@colorI\"\nwhite\x06:\x06ET"

# デシリアライズ
cat_loaded = Marshal.load(dump_str)
p cat_loaded
# => #<Cat:0x00007fb97f80ea90 @color="white">
p cat_loaded.color
# => "white"