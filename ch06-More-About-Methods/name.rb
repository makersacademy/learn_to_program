puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
full_name = f_name + m_name + l_name
puts 'Did you know there are ' + full_name.length.to_s + ' letters'
puts 'in your name?'