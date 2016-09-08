# happy birthday!

puts "What year were you born in?"
year = gets.chomp.to_i
puts "What month were you born in? Please provide an integer, January = 1, February = 2..."
month = gets.chomp.to_i
puts "Which day were you born on?"
day = gets.chomp.to_i


birth = Time.local(year, month, day)

year = 60 * 60 * 24 * 365   # seconds in a year
day = 60 * 60 * 24          # seconds in a day

age = ((Time.now - birth) / year).ceil
age -= 1                    # ensure you don't get spank for the year ahead

puts "SPANK \n" * age