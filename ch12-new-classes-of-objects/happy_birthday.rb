puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp

puts "What day were you born on?"
day = gets.chomp

birthdate = Time.new(year,month,day)
age = (Time.new - birthdate) / 31557600

puts "SPANK " * age
