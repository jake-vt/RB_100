#1 - iterating over hashes & methods - Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

im_family = family.select { |k, a| k == :sisters || k == :brothers }
im_family_arr = im_family.values.flatten

--------------------------------------------
#3 - iterating over hashes & methods - Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

--------------------------------------------
#4 - calling a k-v element - Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

--------------------------------------------
#5 - verify a value - Write a program that verifies that the value is within the hash.
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.value?("Bob")
  puts "Got it!"
else
  puts "Nope!"
end

------------------------------------------------
#6 - key types - What's the difference between the two hashes created below?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#my_hash = {x => "some value"}
#my_hash2 = {"hi there" => "some value"} (because we used a variable assigned to a string, instead of a symbol as the hash key)


