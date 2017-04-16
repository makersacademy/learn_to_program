puts 'Let\'s work out the number of leap years.'
puts 'Please enter a starting year.'

s_year = gets.chomp.to_i

puts 'Now enter an ending year.'
e_year = gets.chomp.to_i
puts 'These are all the leap years between that time:'
(s_year..e_year).each do |year|
  next if year % 4 != 0
  next if year % 100 == 0 && year % 400 != 0
  puts year
end
