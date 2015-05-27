# /usr/bin/env ruby

puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in?"
month = gets.chomp.to_i

puts "What day of the month were you born?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)

num_birthdays = (Time.now - birthday) / 31536000

num_birthdays.to_i.times do 
	puts "SPANK!"
end