def bottles number
  loop do
  number -= 1
  puts  "#{english_number(number).capitalize!} bottles of beer on the wall, #{english_number(number)} bottles of beer. Take one down and pass it around, #{english_number(number-1)} bottles of beer on the wall."
    if number == 1
      puts "No beer left!! :("
    end
  break if number == 1
end
