# The below code shows the use of a default parameter (e.g. ="Bob") working. 

def assign_name(name="Bob")
  name
end

puts assign_name('Kevin') == 'Kevin'  # >> true
puts assign_name == 'Bob'             # >> true