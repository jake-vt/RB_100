=begin  

  The below code shows:
      1 - variables ('a') initialized outside a method definition ('my_value') are not visibile within the method.
          An exception is raised when we call 'my_value' on 'array' becasue as the code hits line 21 it is unable to
          operate on the local variable 'a' which has not yet been initialized inside the method.

      2 - when we fix this by passing the outside 'a' as an argument to 'my_value' and thus initializing 'a' inside the method definiton
          we fix the error, however:
          the local varaiable 'a' passed in on line 33 is STILL a different local variable to the 'a' defined on line 30.
          although they are pointing at the same value initially, this changes when the former is operated on on line 35.

=end

# 1) UNINITIALIZED LOCAL VARIABLES
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b          # >> 'undefined method `+' for nil:NilClass (NoMethodError)'
  end
end

my_value(array)
puts a              


# 2) INNER VS. OUTER SCOPE
a = 7
array = [1, 2, 3]

def my_value(ary, a)
  ary.each do |b|
    a += b          
  end
end

my_value(array, a)
puts a              # >> 7