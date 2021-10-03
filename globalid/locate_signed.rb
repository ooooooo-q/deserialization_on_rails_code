require 'globalid'

class Person
  include GlobalID::Identification

  attr_reader :id
  def initialize(id = 1)
    @id = id
  end

  def self.find(id)
    new(id)
  end
end

SignedGlobalID.verifier = GlobalID::Verifier.new("test")
person_sgid = SignedGlobalID.create(Person.new(5), app: "test")

# 署名付きのBase64になる
puts person_sgid
# => "BAh7CEkiCGdpZAY6BkVUSSIYZ2lkOi8vdGVzdC9QZXJzb24vNQY7AFRJIgxwdXJwb3NlBjsAVEkiDGRlZmF1bHQGOwBUSSIPZXhwaXJlc19hdAY7AFQw--3ece953c9870bd0c3721a26142666e91e4efa6a3"

# Personクラスが復元される
puts GlobalID::Locator.locate_signed person_sgid
# => #<Person:0x00007ffa171d3738>