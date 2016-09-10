puts "What year were you born? please type YYYY eg 1999"
year = gets.chomp.to_i

puts "and what month? please type MM eg 03"
month = gets.chomp.to_i

puts "What day of the month? please type DD eg 04"
day = gets.chomp.to_i

# p "#{year} #{month} #{day}"
# get the time now
now = Time.new

# get the time of the birthday
birthday = Time.local(year, month, day)

# convert the seconds output to years and round down '.floor'
birthdays = ((now -  birthday)/31557600).floor

birthdays.times do 
	puts "SPANK!"
end

puts "Thats #{birthdays} 'SPANKS!'"

