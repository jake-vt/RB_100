# The below shows that unlike method definition, method invocation (#each):
    # In method definitions, local variable scope is restricted to the method definition itself. 
    # In method invocation with a block, the variable scoping rules are more open - the block can use and modify (i.e. reassign) local variables defined outside the block.
        # However, as the second example shows, the variable must first be initialized outside of the block in order to later be referenced outside of it.
      

# Method invocation (variable init outside, reassigned inside)
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a    # 3

# Method invocation (variable init inside)
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a    # undefined local variable or method `a' for main:Object (NameError)