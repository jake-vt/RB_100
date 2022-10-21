# The below shows that variable assignment (number = 1) returns the assigned value (1)
# note: the if/else statement has a conditional of 'true' which means that the if clause will be evaluated every time

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number    # >> 1