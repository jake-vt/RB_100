count = 1
number_a = 0
number_b = 0

loop do
  puts "ITERATION #{count}"
  puts "number a is: #{number_a}\nnumber b is: #{number_b}\n\n"
  
  count += 1
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end