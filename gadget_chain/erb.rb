require 'erb'

code = '...'
erb = ERB.allocate
erb.instance_variable_set :@src, code
erb.instance_variable_set :@filename, "1"
erb.instance_variable_set :@lineno, 1

str = Marshal.dump(erb)
pp str

loaded =  Marshal.load(str)
loaded.result