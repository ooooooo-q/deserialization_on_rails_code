require 'yaml'

class Cat
   attr_reader :color

   def initialize(color)
    @color = color
  end
end

cat = Cat.new("white")

# dumpでシリアライズするとruby向けのタグが含まれている
dump_str = YAML.dump(cat)
pp dump_str
# => "--- !ruby/object:Cat\n" + "color: white\n"

# Catのインスタンスが生成される
cat_loaded = YAML.load(dump_str)
pp cat_loaded.color
# => "white"

# クラスに存在していないattributeに値が設定されている
cat_loaded = YAML.load("--- !ruby/object:Cat\n" + "unexpect_attr: white\n")
pp cat_loaded.color
# => nil
pp cat_loaded.instance_variable_get(:@unexpect_attr)
# => "white"