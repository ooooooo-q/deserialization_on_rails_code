require 'globalid'

gid = URI.parse("gid://bcx/Encoding/utf-8")
p GlobalID::Locator.locate gid
# => #<Encoding:UTF-8>

p GlobalID::Locator.locate "gid://bcx/Encoding/utf-8"
# => #<Encoding:UTF-8>