require 'msgpack'

class Cat

  def initialize(color)
    @color = color
  end

  def to_msgpack_ext
    @color
  end
  
  def self.from_msgpack_ext(value)
    new(value)
  end
end

MessagePack::DefaultFactory.register_type(0x01, Cat) 

cat = Cat.new('black')
msg = MessagePack.pack(cat)
pp msg
# "\xC7\x05\x01black"

pp MessagePack.unpack(msg) 
# #<Cat:0x000000014219bbd8 @color="black">