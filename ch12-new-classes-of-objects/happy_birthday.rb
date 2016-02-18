

puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp

puts "On what day were you born"
day = gets.chomp

birthday = Time.new(year, month, day)
age = Time.now.year - birthday.year

(1..age).each {|i| puts 'SPANK!'}
