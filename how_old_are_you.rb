puts "what year were you born in?"
year = gets.chomp

puts "what month were you born in? Please answer with the numerical value like 7 for July."
month = gets.chomp

puts "what day were you born?"
day = gets.chomp



dob = Time.local(year, month, day)
ageInSeconds = Time.new - dob
noYears = ageInSeconds / 31557600
noYears.to_i.times {puts "SPANK"}