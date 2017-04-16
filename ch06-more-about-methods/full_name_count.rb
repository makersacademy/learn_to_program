# Program to count number of letters of a full name

puts "What's your first name?"
f_name = gets.chomp
puts "Ok, what about your middle name?"
m_name = gets.chomp
puts "Nice. Now what's your last name?"
l_name = gets.chomp
puts "Pleased to meet you #{f_name} #{m_name} #{l_name}!"
puts "Did you know that there are #{f_name.size + m_name.size + l_name.size} letters in your name?"
puts

# This counts the number of letters when full name is given in one go

puts "What's your full name?"
full_name = gets.chomp
full_name_char = full_name.split(" ").map {|x| x.size}.inject {|sum,x| sum + x }.to_s
puts "Did you know that there are " + full_name_char + " letters in your name?"