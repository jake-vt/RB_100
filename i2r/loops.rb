#1 - each method - What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

-----------------------------------
#2 - while loop - Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

x = -1
a = ""

puts "This is a counter program, it will keep counting up untill you say 'STOP' :)"
while a != "STOP" do
  puts x += 1
  puts "Type 'STOP' to stop!"
  puts "Press enter to continue"
  a = gets.chomp
end

-----------------------------------
#3 - recursion - Write a method that counts down to zero using recursion.
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)