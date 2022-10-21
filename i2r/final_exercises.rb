#1 - Basic method call - Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |i|
  puts i
end

------------------------------------------
#2 - Conditionals in method - Same as above, but only print out values greater than 5
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |i|
  if i > 5 
    puts i
  end
end

------------------------------------------
#3 - modulo operator to check for even/odd - use the select method to extract all odd numbers into a new array
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr2 = arr.select do |i|
  i % 2 !=0
end

------------------------------------------
#4 - insert value into array - Append 11 to the end of the original array. Prepend 0 to the beginning.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.push(11)
arr.unshift(0)

------------------------------------------
#5 - delete a value  - Get rid of 11. And append a 3.
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.pop
arr.push(3)

------------------------------------------
#6 - uniq method - Get rid of duplicates without specifically removing any one value.
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

arr.uniq!

------------------------------------------
#8 - hash creation - Create a Hash, with one key-value pair, using both Ruby syntax styles.
hash = {name: "Bob", height: "160 lb"}
hash = {:name => "Bob", :height => "160 lb"}

------------------------------------------
#9 - modifying a hash - With the below hash, first - get the value of the key ':b", second - add the key:value pair '{e:5}', third - remove all key:value pars whose value is less than 3.5
h = {a:1, b:2, c:3, d:4}

h[:b]                   # => 2
h[:e] = 5               # => inserted {e:5}
h.delete_if do  |k,v|
  v < 3.5
end                     # => deleted k:v pairs with v < 3.5

------------------------------------------
#10 - Nested collections - Can hash values be arrays? Can you have an array of hashes?

# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

------------------------------------------
#11 - Transforming data structures - write a program that copies the information from the array into the empty hash that applies to the correct person

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# Output:
#  contacts = {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#             }

---------------
CHALLENGE 1.0 - # do the above with a programmed loop, not manually
----------------
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
#note: defining new array 'fields' allows each key to be iteratively called into the 'contacts' hash iteratively
#note: nested each methods enable .... ?? iteration through 'fields' array to be used to populate 'contacts' hash as it MUST BE CALLED FROM WITHIN THE METHOD
#note: hash[field] iterativeludefines a new key in the empty {} hash in 'contacts' as being 
#note: .shift method pops out the FIRST element in the 'contact_data' array 

---------------
CHALLENGE 2.0 - # do the above multiple entries in the contacts hash.
----------------
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

------------------------------------------
#12 - Accessing nested hash - Access Joe's email and Sally's phone number
contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}}

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

------------------------------------------
#13 - delete_if & starts_with - delete all of the strings that begin with an "s" or "w" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |str|
  str.start_with?("s", "w")
end

------------------------------------------
#14 - map & flatten - turn the below into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...].
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |pairs| pairs.split } #or: a.map! isntead of a = a.map
a = a.flatten
b = a

------------------------------------------
#15 - hashes & order - What will be the ouput of the below?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# => "These hashes are the same!" because:
# 1) method used to construct k:v pairs is irrelevant
# 2) unlike arrays, the order of k:v pairs is irrelevant