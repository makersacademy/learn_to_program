puts 'What would you like to say to Gran?'

bye_count = 0

while true
  you_say = gets.chomp
  rand_year = 1930 + (rand(21))

  if you_say == 'BYE!'
    bye_count = bye_count + 1
  else
    bye_count = 0
  end

  if bye_count >= 3
    puts 'OH, OK... BYE THEN SWEETIE!'
    break
  end

  if you_say != you_say.upcase
    puts 'HUH! SPEAK UP SONNY!'
  else
    puts 'NO! NOT SINCE ' + rand_year.to_s + '!'
  end
end
