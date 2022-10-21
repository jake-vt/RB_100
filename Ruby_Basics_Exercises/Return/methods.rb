# In the below, the '#times' method is called on the integer '5'. 'sheep' represents i in the count of 5 from 0 > 1 > 2 > 3 > 4 performed by this method call
# due to the positioning of return, when 'count_sheep' is called on line 15 it will iterate 3 times (0, 1, 2), puts-ing the value of each integer to the output.
# the inclusion of 'p' on line 15 means the return value of 'count_sheep' will also be output (unlike with puts or print)


def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep 
=begin output:
  0
  1
  2
  nil
=end
