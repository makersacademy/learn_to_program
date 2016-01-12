puts "Please enter your year of birth"
year = gets.to_i
puts "Please enter your month of birth"
month = gets.to_i
puts "Please enter your day of birth"
day = gets.to_i

born = Time.mktime(year, month, day)
age = Time.now - born
age = age / 31536000

puts "SPANK! \n" * age.to_i
