puts "what year were you born? (yyyy)"
year = gets.chomp

puts "which month (mm)?"
month = gets.chomp

puts "which day? (dd)"
day = gets.chomp

birth_day = Time.local(year, month, day)
age_sec = Time.new - birth_day
age_y = (age_sec/(60*60*24*365)).to_i

age_y.times do
    puts "SPANK!"
end