puts 'HEY THERE, LUCY! GIVE GRAMMY A HUG!'

while true
	you = gets.chomp

	if you == "BYE"
		puts 'BYE SWEETIE!'
		break
	end

	if you != you.upcase
		puts 'HUH?! SPEAK UP, LUCY!'
	else
		random_year = 1927 + rand(33)
		puts 'NO, NO SINCE ' + random_year.to_s + '!'
	end
end