puts 'What would you like to say to Grandma?'
while true
  you_say = gets.chomp
  rand_year = (1930 + rand(21))

  if you_say == 'BYE!'
    puts 'BYE SWEETIE!'
    break
  end

  if you_say != you_say.upcase
    #She didn't hear you
    puts 'HUH!   SPEAK UP SONNY!'
  else
    #She heard you
    puts 'NO, NOT SINCE ' + rand_year.to_s + '!'
  end
end
