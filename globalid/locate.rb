require 'globalid'

GlobalID.app = "cat"

class Cat
  include GlobalID::Identification
  attr_reader :id

  def initialize(id = 1)
    @id = id
  end

  def self.find(id)
    new(id)
  end
end

cat = Cat.new(1)
cat_gid = cat.to_global_id

p cat_gid
# => #<GlobalID:0x00007fb4c8967ec0 @uri=#<URI::GID gid://cat/Cat/1>>
p cat_gid.to_s
# => "gid://cat/Cat/1"

# Catが復元される
p GlobalID::Locator.locate cat_gid.to_s
# #<Cat:0x00007fb4c51d4800 @id="1">