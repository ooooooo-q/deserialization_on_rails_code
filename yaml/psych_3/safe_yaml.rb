require 'yaml'
require 'safe_yaml'

class Cat
   attr_reader :color

   def initialize(color)
    @color = color
  end
end

cat = Cat.new("white")

dump_str = YAML.dump(cat)
pp dump_str
# => "--- !ruby/object:Cat\n" + "color: white\n"

cat_loaded = YAML.load(dump_str)
pp cat_loaded
# => {"color"=>"white"}

cat_loaded = YAML.load_file("./test.yaml")
pp cat_loaded