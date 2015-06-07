puts 'Hello there what\'s your first name?'
first_name = gets.chomp
puts 'Your first name is ' + first_name + '? What a lovely name!'
puts 'Do you have a middle names, ' + first_name + '?'
middle_name = gets.chomp
puts "Great and what\'s your surname, #{first_name}?"
surname = gets.chomp
puts "Nice to meet you #{first_name} #{middle_name} #{surname}"
