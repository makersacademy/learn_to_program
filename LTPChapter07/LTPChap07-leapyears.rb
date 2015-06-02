puts 'Hello there! Could you pick a year?'
first = gets.chomp.to_i
puts 'Thanks, and could you now pick another, later year?'
second = gets.chomp.to_i

puts 'Thanks so much! Did you know that between #{first} and #{second}, all these years were leap years?'
year = first

while year <= second
  if year%4 == 0
    if year%100 != 0 || year%400 == 0
      puts year
    end
  end

  year = year + 1
end