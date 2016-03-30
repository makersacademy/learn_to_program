#correct

puts "What year were you born?"
year = gets.chomp

puts "What month were you born?"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

time = Time.new
bd = Time.local(year, month, day)

age = ((time - bd) / 31557600).floor

puts "SPANK! " * age