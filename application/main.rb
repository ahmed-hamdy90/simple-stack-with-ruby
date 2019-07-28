#!/user/bin/ruby

require_relative "stack"
require_relative "extra"

puts "Stack Test =================================================="

x = Stack.new

x.push(111)
x.push(10)
x.push(200)
x.push(2000)


puts x.max

x.pop
x.pop

puts x.max

puts "Extra Test =================================================="

y = Extra.new

y.push(150)
y.push(50)
y.push(500)

puts y.max
puts y.mean

y.pop

puts y.max
puts y.mean
