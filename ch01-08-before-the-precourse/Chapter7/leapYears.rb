puts 'Pick a starting year (like 1921 or something)?'
starting = gets.chomp.to_i

puts 'Thanks, now pick an ending year?'
ending = gets.chomp.to_i

puts 'Check it out, all of the leap years betwen those two years are...'

year = starting
while year <= ending
  if year % 4 == 0
    if year % 100 != 0 || year % 400 == 0
      puts year
    end
  end

  year = year + 1
end
