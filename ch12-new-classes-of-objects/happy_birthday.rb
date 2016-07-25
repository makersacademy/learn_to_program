puts "What year were you born? (YYYY)"
year = gets.chomp
puts "What month were you born? (MM)"
month = gets.chomp
puts "What day were you born? (DD)"
day = gets.chomp

birthday = Time.local(year, month, day)

currentAge = (Time.new.year - birthday.year)
puts "Woah, you are #{currentAge}! Look at you!"

puts "Does that deserve some SPANKS? (Y/N)"
answer = gets.chomp

if answer == "Y"
  puts "SPANK!" * currentAge
else
  puts "Alright ruin all my fun why don't you!"
end
