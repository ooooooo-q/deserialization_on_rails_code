require "active_support"

require "active_support/core_ext"
Time.zone_default = Time.find_zone! "Asia/Tokyo"

puts ActiveSupport::JSON::decode('"2020-02-02"').class
# => String
puts ActiveSupport::JSON::decode('"2021-02-03T11:42:33.291Z"').class
# => String

ActiveSupport.parse_json_times = true
puts ActiveSupport::JSON::decode('"2020-02-02"').class
# => Date
puts ActiveSupport::JSON::decode('"2021-02-03T11:42:33.291"').class
# => ActiveSupport::TimeWithZone