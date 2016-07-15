puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in?"
month = gets.chomp.to_i

puts "What day were you born on?"
day = gets.chomp.to_i

birthday = Time.local(year,month,day)
current = Time.new

age = current.year - birthday.year
puts age

