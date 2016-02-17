puts "In what year were you born?"
year = gets.chomp

puts "In what month were you born?"
month = gets.chomp

puts "In what day were you born?"
day = gets.chomp

born = Time.new(year, month, day)
old = Time.now - born
old = old / 31_536_000

puts 'SPANK! ' * old
