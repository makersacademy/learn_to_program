puts "What is your first name?"
firstName = gets.chomp
puts "What is your middle name?"
middleName = gets.chomp
puts "What is your last name?"
lastName = gets.chomp

puts "Hello, #{firstName} #{middleName} #{lastName}! Nice to meet you!"

puts "What is your favorite number?"
favoriteNum = gets.chomp.to_i
favoriteNum +=1
puts "Do you think #{favoriteNum} is a bigger and better number?"