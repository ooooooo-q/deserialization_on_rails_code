class Cat
   attr_reader :color

   def initialize(color)
     @color = color
   end

end

str = "\x04\bo:\bCat\x06:\n@tailI\"\nwhite\x06:\x06ET"
cat_loaded = Marshal.load(str)

# 通常は設定できないインスタンス変数に値が設定されている
puts cat_loaded.instance_variable_get(:@tail)
# => white