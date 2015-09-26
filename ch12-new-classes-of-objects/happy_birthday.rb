# your code here
puts "What year were you born in?"
year = gets.chomp
puts "What month?"
month = gets.chomp
puts "and finally, what day?"
day = gets.chomp

bday = Time.local(year,month,day)
today = Time.new

age_in_seconds = (today - bday)

age_in_years = age_in_seconds/(60*60*24*365)

true_age = age_in_years.to_i

puts "Congratulations! You are #{true_age} years old!"