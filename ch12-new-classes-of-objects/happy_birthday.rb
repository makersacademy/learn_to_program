puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

Age = Time.now - Time.new(year, month, day)

puts "You are " + (Age / 31536000).floor.to_s + " years old."
puts "SPANK! " * (Age / 31536000).floor