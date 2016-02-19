puts "What year are you born in?"
year = gets.chomp
puts "What month are you born in?"
month = gets.chomp
puts "What day are you born in?"
day = gets.chomp
age = (Time.now - Time.local(year, month, day)) / 31536000
puts "SPANK!\n" * age.to_i
