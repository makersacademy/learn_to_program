# Hours in a year
puts "How many hours are in a year?"
#hrs in day = 24
#normal year = 365
#leap year = 366
puts "In a normal year there's #{24 * 365} hours."
puts "But in a leap year there's #{24 * 366} hours."
puts

# Minutes in a decade
puts "How many minutes in a decade?"
#decade = 10
#min in day = 1440
#leap year in decade = 2 or 3
puts "In a decade with 2 leap years, there's #{1440 * ((365 * 10) + 2)} minutes"
puts "In a decade with 3 leap years, there's #{1440 * ((365 * 10) + 3)} minutes"
puts

# Your age in seconds
puts "What's my age in seconds?"
#seconds in day = 86400
#leaps years in my life = 10
#days since last birthday = 326
puts "I'm #{86400 * ((365 * 40) + 10 + 326)} seconds old"
puts

# Author's age
puts "What's the author's age?"
#1160,000,000 seconds - not counting any leap years
puts "The author's age is #{1160000000 / (60 * 60 * 24 *365)}"