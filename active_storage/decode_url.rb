require 'base64'

pp ::Base64.strict_decode64("eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19")
# "{\"_rails\":{\"message\":\"BAhpBg==\",\"exp\":null,\"pur\":\"blob_id\"}}"

pp ::Base64.strict_decode64("BAhpBg==")
# "\x04\bi\x06"

pp Marshal.load("\x04\bi\x06")
# 1