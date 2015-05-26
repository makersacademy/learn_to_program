puts 'HELLO THERE!'

while true
  said = gets.chomp

  if said == "BYE"
     bye = bye + 1
  else 
     bye = 0
  end
  if bye >= 3
     puts "GOODBYE DEAR!"
     break
  end

  if said != said.upcase
     puts 'WHAT?? SPEAK UP!'
  else
     year = 1930 + rand(21)
     puts 'NO, NOT SINCE ' + year.to_s + '!'
  end
end
  
