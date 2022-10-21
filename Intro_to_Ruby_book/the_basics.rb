#1 - concatenation - Add two strings together that, when concatenated, return your first and last name as your full name in one string.
"Jake " + "Thompson"

#2 - modulo operator - Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
thousands = 3789 / 1000
hundreds = 3789 % 1000 / 100
tens = 3789 % 100 / 10
ones = 3789 % 10

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"

#3 - hash data structure - Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.
movie_titles = {:Shawshank_Redemption => 1994, :The_Godfather => 1972, :The_Dark_Knight => 2008}

puts movie_titles[:Shawshank_Redemption]
puts movie_titles[:The_Godfather]
puts movie_titles[:The_Dark_Knight]

#4 - array data structure - Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
movie_dates = [1994, 1972, 2008]

puts movie_dates[0]
puts movie_dates[1]
puts movie_dates[2]

#5 - Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
#note: appears to be no default method for calculating a factorial in ruby.

puts 5*4*3*2*1
#etc...

# 6 - squaring numbers - Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
# notes: better off creating a method but idk how yet :p
puts 2.689 * 2.689
puts 5.99 * 5.99
puts 120.1 * 120.1

# 7 - errors - what does the below error message tell you?:
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}' from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

answer = "we have incorrectly used ')' when creating a hash"

