require 'erb'

erb = ERB.allocate

str = Marshal.dump(erb)
pp str
# "\x04\bo:\bERB\x00"

loaded =  Marshal.load(str)
loaded.result