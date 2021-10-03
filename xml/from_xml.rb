# require 'rexml'
require 'active_support'
require 'active_support/core_ext'

xml = <<-XML
  <?xml version="1.0" encoding="UTF-8"?>
    <hash>
      <blue type="file">aaa</blue>
      <green type="integer">200</green>
      <red type="date">2021-12-21</red>
    </hash>
XML

puts Hash.from_xml(xml)
# => {"hash"=>{"blue"=>#<StringIO:0x00000001321285f8 @original_filename=nil, @content_type=nil>, "green"=>200, "red"=>Tue, 21 Dec 2021}}