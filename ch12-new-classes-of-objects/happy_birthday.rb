puts "Enter your year of birth in a format YYYY"
year = gets.chomp
puts "Enter your month of birth in a format MM"
month = gets.chomp
puts "Enter your day of birth in a format DD"
day = gets.chomp

dob = Time.local(year, month, day)
puts dob

now = Time.new
puts now


puts "You are #{now.year - dob.year} years, #{now.month - dob.month} months and #{now.day - dob.day} days old."

print 'SPANK! ' * (now.year - dob.year)
