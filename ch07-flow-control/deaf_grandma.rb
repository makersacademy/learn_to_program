# Deaf Grandma
while true
  response = gets.chomp 

  if response != '' && response == response.upcase 
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end

  break if response == 'BYE'
end
