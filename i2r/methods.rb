# 1 - simple method call w/ parameter - rite a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  "Hello #{name}, how are you?"
end

puts greeting("Jake")

--------------------------------------------------
#2 - returns - What do the following expressions evaluate to?
1. x = 2 
  # => 2 (variable assignment returns the assigned value)

2. puts x = 2
  # => nil (puts outputs its argument, return nil)

3. p name = "Joe"
  # => "Joe" (p outputs its argument AND then return its argument)

4. four = "four"
  # => "four" (variable assignment)

5. print something = "nothing"
  # => nil (print also returns nil)

--------------------------------------------------
#3 - Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
def multiply(a, b)
  a * b
end

multiply(6, 7)

--------------------------------------------------
#4 - explicit return - What will the following code print to the screen?
  #explicit return stops the execution of the method.
  #line 39 is never executed, so nothing is output to the screen as 
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

--------------------------------------------------
#5 - debug - Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
#still returns nil as last line executed is 47
#we can check by placing invoking the 'p' method at the start of line 50

--------------------------------------------------
#6 - interpreting errors - what does the following error tell you?

=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
 =end
 
#I am calling calculate_product with only 1 arg, when it requires 2

