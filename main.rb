require_relative 'CreditCard'
require_relative 'PredatoryCreditCard'
require_relative 'Vector'
require_relative 'Progression'
require_relative 'ArithmeticProgression'
require_relative 'GeometricProgression'
require_relative 'FibonacciProgression'


puts "\n### CreditCard ###"
cc = CreditCard.new('Ximenota', 'Halas Bank', '0412 0122', 10000)
puts cc.balance
cc.charge(100)
puts cc.balance
cc.make_payment(50)
puts cc.balance
result = cc.charge(23000)
puts result
puts cc.balance

puts "\n### Vector ###"
v = Vector.new(5)
v[1] = 23
v[-1] = 45
puts "v: #{v}"
puts "v[4]: #{v[4]}"
u = v + v
puts "u: #{u}"
total = 0
v.each do |entry|
  total += entry
end
puts "total: #{total}"

puts "\n### PredatoryCreditCard ###"
pcc = PredatoryCreditCard.new('Ximenota', 'Halas Bank', '0412 0122', 100, 0.0825)
pcc.charge(100)
puts pcc.balance
result = pcc.charge(10)
puts result
puts pcc.balance
pcc.process_month
puts pcc.balance

puts "\n### Progression ###"
prog = Progression.new
puts prog.next
puts prog.next
prog.print_progression(5)

Progression.new.print_progression(10)
ArithmeticProgression.new(5).print_progression(10)
ArithmeticProgression.new(5,2).print_progression(10)
GeometricProgression.new.print_progression(10)
GeometricProgression.new(3).print_progression(10)
FibonacciProgression.new.print_progression(10)
FibonacciProgression.new(4,6).print_progression(10)