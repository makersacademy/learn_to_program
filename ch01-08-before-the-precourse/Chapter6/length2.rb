puts 'whats your first, middle and last names please?'
first = gets.chomp
middle = gets.chomp
last = gets.chomp
puts 'Thanks, your name has ' + (first.length + middle.length + last.length).to_s + ' letters in it!'
