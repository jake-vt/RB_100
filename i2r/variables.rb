# 1 - using gets to define var - Write a program that asks the user to type in their name and then prints out a greeting message with their name included.
puts "What is your name?"
name = gets.chomp

puts "Hello, #{name}!" 
#alt: puts "Hello " + name

#2 - converting user input from string - Write a program that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years.
puts "How old are you?"
age = gets.chomp.to_i

puts "in 10 years you will be:"
puts age + 10
puts "in 20 years you will be:"
puts age + 20
#etc...

#3 - using .times method 
10.times puts {puts name}

#4 - handling multiple vars 
puts "What is your first name?"
fn = gets.chomp

puts "What is your last name?"
ln = gets.chomp

puts fn + " " + ln