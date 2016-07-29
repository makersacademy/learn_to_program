puts "What year were you born in?"
year = gets.chomp.to_i
puts "What month were your born in?"
month = gets.chomp.to_i
puts "What day were you born on?"
day = gets.chomp.to_i

birthday = Time.gm(year,month,day)
age = (Time.new - birthday)/(60*60*24*365)

puts "Your age is #{age.to_i}"
puts "SPANK!\n" * age.to_i
