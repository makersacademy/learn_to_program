def spank

months = {
  'jan' => 1, 'feb' => 2, 'mar' => 3, 'apr' => 4, 'may' => 5,
  'jun' => 6, 'jul' => 7, 'aug' => 8, 'sep' => 9, 'oct' => 10,
  'nov' => 11, 'dec' => 12}

puts "What year were you born? (YYYY)"
year = gets.chomp

puts "What month were you born? (MMM)"
month = months[gets.chomp.downcase]

puts "What day were you born? (DD)"
day = gets.chomp
  if day[0] == 0
    day = day[1]
  end

bday = Time.local(year, month, day)

age = Time.now - bday

secs_in_year = 60*60*24*365.25
puts "SPANK!\n" * (age / secs_in_year)
puts "(You are #{age.to_i / secs_in_year.to_i}!)"

end

spank
