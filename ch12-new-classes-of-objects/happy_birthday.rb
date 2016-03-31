puts "What year were you born?"

year = gets.chomp.to_i

puts "What number month were you born?"

month = gets.chomp.to_i

puts "What number day of the month were you born?"

day = gets.chomp.to_i

dob = Time.new(year,month,day)
now = Time.new

age = now - dob

(age / (60 * 60 * 24 * 7 * 52)).floor.times {puts "SPANK!\n"}