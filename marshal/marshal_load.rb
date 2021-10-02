class Cat
   attr_reader :color

   def marshal_dump
    puts "call marshal_dump"
    @color
   end

   def marshal_load(a)
    puts "call marshal_load"
   end
end

cat = Cat.new

# marshal_dumpが実行される
dump_str = Marshal.dump(cat)

# marshal_loadが実行される
cat_loaded = Marshal.load(dump_str)