puts 'Hello there, and what\'s your name?'
first_name = gets.chomp
puts 'Your name is ' + first_name + '? What a lovely name!'
puts 'Do you have a middle name? What is it?'
middle_name = gets.chomp
puts 'Your middle name is ' + middle_name + '?'
puts 'Do you have a last name?'
last_name = gets.chomp

full_name = first_name + ' ' + middle_name + ' ' + last_name

puts 'Hello, ' + full_name + ' 8)'