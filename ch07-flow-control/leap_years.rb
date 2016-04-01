# Leap Years
puts 'Enter a starting year.'
year_1 = gets.chomp.to_i
puts 'Enter an ending year.'
year_2 = gets.chomp.to_i

if year_1 <= year_2

  if year_1 % 400 == 0
    puts year_1
  elsif year_1 % 4 == 0 && year_1 % 100 != 0
    puts year_1
  end

  year_1 += 1

else puts 'Error: the ending year is greater than the starting year.'

end