puts "This program is all about how old you are."
puts "Can you tell us the year that you were born?"
year = gets.chomp
puts "Can you tell us the months that you were born?"
month = gets.chomp
puts "And lastly can you tell us what day you were born?"
day = gets.chomp

time = Time.new
birthday = Time.new(year, month, day)
puts "SPANK!\n" *((time - birthday)/(365*24*60*60))