puts "What year you were born in?"
year = gets.chomp.to_i

puts "What month? (as a number)"
month = gets.chomp.to_i

puts "And what date of the month?"
day = gets.chomp.to_i

seconds = Time.new - Time.gm(year, month, day)
age = (seconds / 31557600).to_i

age.times {puts "SMACK!"}
