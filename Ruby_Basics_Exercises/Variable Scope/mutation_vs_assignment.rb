# The below shows the difference between: 
  # mutating an object (e.g. the string "Xyzzy" referenced by variable 'a') by calling a method (e.g. string#[]), and;
  # trying to re-assign that variable ('a') to a new object (the string "Xy-zy"). Within a method, this can not be done due to variable scope.


# VARIABLE MUTATION
a = "Xyzzy"

def my_value(a)
  a[2] = '-'
end

my_value(a)
puts a        # "Xy-zy"



# VARIABLE ASSIGNMENT
a = "Xyzzy"

def my_value(b)
  b = 'Xy-zy'
end

my_value(a)
puts a         # "Xyzzy"