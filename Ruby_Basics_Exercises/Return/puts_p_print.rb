# puts  - method that outputs value + \n (newline) and returns nil
# print - method that outputs value and returns nil
# p     - method that outputs value + \n (newline) and returns value
          # the p method:                  
                          def p(object)   
                            puts object.inspect
                          end

puts nil  
#           (ouput =   \n)
# => nil    (return value = nil)

print nil  
# => nil    (output =   , return value = nil)

p nil
# nil       (output = nil)
# => nil    (return vale = nil)


