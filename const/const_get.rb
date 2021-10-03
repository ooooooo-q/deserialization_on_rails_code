module Bar
  BAR = 1
end

module BAR
  BAR = 2
end

class Baz
  BAR = 3
end

p Baz.const_get(:BAR)   
# => 3

p Baz.const_get('BAR')   
# => 3

p Baz.const_get("::BAR")
# => BAR

p Baz.const_get("::BAR", false)
# => BAR

p Baz.const_get("::BAR::BAR", false)
# => 2

p Baz.const_get("BAR".to_sym)
# => 3

p Baz.const_get("Bar".to_sym)
# => Bar

p Baz.const_get("::BAR".to_sym)
# =>  wrong constant name ::BAR (NameError)