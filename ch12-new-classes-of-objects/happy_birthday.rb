# your code here
puts "What year where you born in?"
year = gets.chomp.to_i
puts "What month where you born on?"
month = gets.chomp.to_i
puts "What day were you born on?"
day = gets.chomp.to_i

b = Time.local(year, month, day)
# Put the year, month and day recieved from user into the time format.
t = Time.now
# The current time.

birthday = t - b
# Minus my birthday from current time and gives age in seconds.
secs_in_year = 60**2 * 24 * 365
# Seconds in a year - have to have the same units.

birth_num = birthday / secs_in_year
# Divide the seconds in a year by my birthday seconds gives age in years.

puts birth_num.floor
# Rounding that number to a whole number.