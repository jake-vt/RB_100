# Program to divide and integer

integer_1 = nil
integer_2 = nil


loop do
  puts ">> Please enter a whole number:"
  integer_1 = gets.chomp.to_i

  break if integer_1.is_a? Integer
  puts ">> Hmm, it looks like that's not a whole number :s please try again."
end


loop do
  puts ">> Your first number was #{integer_1}!\n>> Please enter another whole number:"
  integer_2 = gets.chomp.to_i

  if integer_2 == 0
    puts ">> Uh-Oh... This number can not be 0, please try again." 
  else
    break if integer_2.is_a? Integer
    puts ">> That's not an whole number :s please try again."
  end

end

result = integer_1.to_f / integer_2.to_f
puts ">> #{integer_1} / #{integer_2} = #{result} !"