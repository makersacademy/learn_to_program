puts "What year were you born? (e.g. 1982)"
year = gets.chomp
puts "What month were you born? (e.g. if you were born in February, write '2')"
month = gets.chomp
puts "What day were you born?(e.g. if you were born on 19th of month, write '19')"
day = gets.chomp

birthday = Time.gm(year, month, day)

age_seconds = Time.new - birthday

age_years = age_seconds/60/60/24/365

spank = age_years.to_i

puts "Happy birthday! You are #{spank} years old!"

spank.times do
   puts "SPANK!"
end

#puts birthday
#puts Time.new