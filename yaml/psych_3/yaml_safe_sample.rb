require 'yaml'

class Cat
   attr_reader :color

   def initialize(color)
    @color = color
  end
end

cat = Cat.new("white")

dump_str = YAML.dump(cat)

# 許可されていないクラスをデシリアライズしようとするとエラーが発生
cat_loaded = YAML.safe_load(dump_str)
# => Tried to load unspecified class: Cat (Psych::DisallowedClass)

# 第2引数に指定を追加すれば復元できる
cat_loaded = YAML.safe_load(dump_str, [Cat])
pp cat_loaded.color
# => "white"