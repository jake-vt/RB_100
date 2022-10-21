# The below puts an error, showing that local variables inside the method definition (even if they have the same name: "a" as local variables outside) 
# are in fact different variables. Here we have initiazlised a seperate variable "a" inside the method, that is not accessible outside of it (when we call puts)

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a              # `my_value': undefined local variable or method `a' for main:Object (NameError)


    # note: local variables will be visible (via closures) inside blocks, procs, and lambdas.