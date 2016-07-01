puts "Please tell me year you were born in YYYY format"
year = gets.chomp
puts "Please tell me month number when you were born in MM format"
month = gets.chomp
puts "And now enter the day in DD format"
day = gets.chomp
bd = Time.local((year),(month),(day), 0, 0, 0)
current = Time.now
diff = ( current - bd ) / (60*60*24*365)
years = diff.to_i % 12
puts "Hey you're #{years} years old! Congrats! Catch a..."
(years).times{puts "SPANK!"}
