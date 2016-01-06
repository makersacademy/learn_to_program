puts "What was the year that you were born?"
year = gets.chomp
puts "What was the month"
month = gets.chomp
puts "And what day"
day = gets.chomp
t1 = Time.new(year, month, day)
t2 = Time.new
birthdays = t2.year - t1.year
birthdays -= 1 if t1.yday > t2.yday
print "SPANK!" * birthdays
puts
