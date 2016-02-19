puts "Please enter the year that you were born in, ie 1977"
year = gets.chomp.to_i
puts "Please enter the month that your were born, numerically, i.e January will be 1"
month = gets.chomp.to_i
puts "Please enter the day that you were born during the month that you were born"
day = gets.chomp.to_i

birth_time = Time.gm(year, month, day)
age = Time.now - birth_time

years = age / (60 * 60 * 24 * 365)

print "SPANK!" * years

