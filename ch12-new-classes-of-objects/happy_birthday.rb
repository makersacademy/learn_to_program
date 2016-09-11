puts "Hi, please answer the following giving the numerical format of Calendars"
puts "What year were you born?"
year = gets.chomp
puts "And what month?"
month = gets.chomp
puts "And on what day?"
day = gets.chomp
birthday = Time.gm(year,month,day)
time_now =Time.new
seconds_old = time_now - birthday
puts "You are #{seconds_old} seconds old"
puts

years_old = 1
while Time.gm(year.to_i + years_old, month, day) <= time_now
	puts "SPANK!"
	years_old += 1
end