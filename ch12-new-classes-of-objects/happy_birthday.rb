puts "What year were you born in?"
year = gets.chomp

puts "Which month? (1-12)"
month = gets.chomp

puts "Which day of the month was it?"
day = gets.chomp

birth = Time.local(year, month, day)

age = Time.now.year - (birth.year)

puts "One for every birthday..."
puts "SPANK! \n"*age
