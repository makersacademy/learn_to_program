puts "what year were you born?"
year = gets.chomp.to_i

puts "what month were you born? (1-12)"
month = gets.chomp.to_i

puts "what day were you born?"
day = gets.chomp.to_i

bday = Time.local(year, month, day)

age = ((Time.new - bday) / 60 / 60 / 24 / 365).to_i

puts "Haha now a SPANK! for each year!!!"
puts "SPANK!\n" * age.floor
