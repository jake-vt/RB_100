PASSWORD = "password"
tries_remaining = 3

#-------------------------------

loop do 
  puts ">> Please enter your password:   (#{tries_remaining} tries remaining)."
  try = gets.chomp
  tries_remaining -= 1 

  break if try == PASSWORD

  if tries_remaining < 1
    puts "Password incorrect. Account Locked"
    break
  else 
    puts "Password incorrect. #{tries_remaining} tries remaining."
  end

end

unless tries_remaining < 1 then 
  puts "Welcome!"
end
