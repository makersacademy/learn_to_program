puts 'Hello there, and what\'s your name?'
firstname = gets.chomp
puts 'Thanks, ' + firstname + '! Could you tell me your middle name?'
middlename = gets.chomp
puts ''+ middlename + ' is a great middle name. Could you you tell me your last name too?'
lastname = gets.chomp
puts 'Great! Hello ' + firstname +' '+ middlename +' '+ lastname + ', very nice to meet you.'

puts ''
puts 'Hi! What\'s your favourite number?'
number = gets.chomp.to_i
puts 'I suppose that\'s ok, but here\'s a bigger better number:'
puts number + 1
