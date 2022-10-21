USER = "admin"
PASSWORD = 'Odegaard'

loop do

  puts '>> Please enter your user name:'
  user_name_try = gets.chomp
  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name_try == USER && password_try == PASSWORD 
  
  puts '>> Authhorization failed!'

end

puts 'Welcome!'