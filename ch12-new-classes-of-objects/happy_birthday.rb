puts "What year were you born?"
year = gets.chomp
puts "What month?"
month = gets.chomp
puts "What day?"
day = gets.chomp

birth = Time.local(year, month, day)
now = Time.new
age = ((now - birth) / 60 / 60 / 24 / 365).to_i
puts "SPANK!\n" * age
