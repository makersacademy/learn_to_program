puts "Year of birth"
year = gets.chomp
puts "Month of birth"
month = gets.chomp
puts "Day of birth"
day = gets.chomp

birthday = Time.new(year, month, day).utc
now = Time.now.utc
age = now.year - birthday.year
diff = Time.new(now.year, month, day).utc
age -= 1 if diff > now
age.times{print "SPANK "}
