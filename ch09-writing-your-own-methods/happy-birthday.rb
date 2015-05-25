valid_input = false
while (valid_input == false)
  puts "What year were you born in?"
  year = gets.chomp
  if (year.to_i.to_s == year)
    valid_input = true
  else 
    puts "Please enter a valid year"
  end
end
  
puts "What month were you born in?"
month = gets.chomp
puts "What day were you born on?"
day = gets.chomp

time_born = Time.mktime( year, month, day)

puts time_born