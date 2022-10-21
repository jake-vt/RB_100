#1 - Boolean true or fales - evaluate whether the below expressions return true or false

(32 * 4) >= 129  # returns false [128 >= 129] 
false != !true   # returns false [false is NOT NOT true (i.e. false = true).] 
true == 4        # returns false  [although 4 is a 'truthy' value (i.e. when used in a conditional will evaluate to true) however it is not equal to the boolean true] 
false == (847 == '874') # returns true [847 == '874' is false]
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #returns true [328/4 == 82 is true, which cascades through nested OR statements to return true]

------------------------------------------------
#2 - If with methods - Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters.

def capitalize(string)
  if string.length > 10
    string.upcase
 else
    string
 end
end

puts capitalize("hello world!") #this will be in CAPS
puts capitalize("yo") #this will be in lower case

------------------------------------------------
#3 - If with user input-  Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Please type a number between 0 - 100:"
number = gets.chomp.to_i

if number <= 50 
    puts "#{number} is between 0 and 50"
elsif number <= 100
    puts "#{number} is between 51 and 100"
elsif number > 100
    puts "#{number} is great than 100!"
else
    puts "either that's not a number, or its a negative number - either way, you f****** up"
end