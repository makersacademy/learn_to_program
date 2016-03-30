# # Hours in a year 
# puts 365 * 24 

# # Minutes in a decade 
# puts (10 * 365 + 2) * 24 * 60

# # My age in seconds
# puts 32 * 365 * 24 * 60 * 60

# # Author's age in years
# puts 1160000000 / 60 / 60 / 24 / 365

# # Full name greeting
# puts "Hello there, and what\'s your first name?"
# first = gets.chomp
# puts "And what\'s your second name?"
# second = gets.chomp 
# puts "And what\'s your last name?"
# last = gets.chomp 
# puts "Hello there, #{first + " " + second + " " + last}"
# puts "Did you know there are " + (first.length + second.length + last.length).to_s + " letters in your name?"

# # Bigger, better favorite number 
# puts "What\'s your favorite number?"
# fave = gets.chomp 
# puts "Your new favorite number should be #{fave.to_i + 1}"

# Angry boss
puts "What do you want?"
response = gets.chomp.to_s.upcase
puts 'WHADDAYA MEAN "' + response + '"?!? YOU\'RE FIRED!!'
