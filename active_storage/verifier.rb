require 'active_support'

verifier = ActiveSupport::MessageVerifier.new('dummy_secret')
pp verifier
# #<ActiveSupport::MessageVerifier:0x00007f9a45813058
#  @digest="SHA1",
#  @on_rotation=nil,
#  @options={},
#  @rotations=[],
#  @secret="dummy_secret",
#  @serializer=Marshal>

token = verifier.generate({cat: "color"}, purpose: :test)
pp token
# => "eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9JWTJGMFNTSUtZMjlzYjNJR09nWkZWQT09IiwiZXhwIjpudWxsLCJwdXIiOiJ0ZXN0In19--649cea0bd9f62a311378b88f5785cc3ac4314244"

pp verifier.verified(token, purpose: :test) 
# => {:cat=>"color"}

# シリアライザにJSONを指定することも可能
json_verifier = ActiveSupport::MessageVerifier.new('dummy_secret', serializer: JSON)
pp json_verifier
# #<ActiveSupport::MessageVerifier:0x00007f9a442f3920
#  @digest="SHA1",
#  @on_rotation=nil,
#  @options={:serializer=>JSON},
#  @rotations=[],
#  @secret="dummy_secret",
#  @serializer=JSON>

json_token = json_verifier.generate({cat: "color"}, purpose: :test)
pp json_token
# => "eyJfcmFpbHMiOnsibWVzc2FnZSI6ImV5SmpZWFFpT2lKamIyeHZjaUo5IiwiZXhwIjpudWxsLCJwdXIiOiJ0ZXN0In19--6deaf5555f0d3afc3f23baf3b00887c6302abef1"