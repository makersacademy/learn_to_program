def billionise(time)
  time + 10 ** 9
end

puts "Please enter the year you were born (eg. 1980):"
year = gets.chomp.to_i
puts "Please enter the month you were born (eg. 9):"
month = gets.chomp.to_i
puts "Please enter the day you were born (eg. 4):"
day = gets.chomp.to_i

birth_date = Time.gm(year, month, day)

puts "I was one billion seconds old on #{billionise(birth_date)}."
