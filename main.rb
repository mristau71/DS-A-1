require_relative 'CreditCard'
require_relative 'PredatoryCreditCard'
require_relative 'Vector'

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