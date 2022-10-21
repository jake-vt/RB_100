#1 - .inlcude meethod - Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is included in this array."
end

#3- .last & .first methods - How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

#7 - .each_with_index method - iterate through an array of your creation that prints each index and value of the array.
arr =[15, 7, 18, 5, 12, 8, 5, 1]
arr.each_with_index { |val, idx| puts "#{idx}: #{val}" }

#8 - .map method - Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
arr =[15, 7, 18, 5, 12, 8, 5, 1]
arr2 = arr.map {|i| i+=2 }