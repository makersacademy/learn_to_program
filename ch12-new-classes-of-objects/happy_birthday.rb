puts "What's your birthday? Please use format DD/MM/YYYY"

birthday_date = gets.chomp.split("/").map! {|x| x.to_i}

todays_date = the_date = Time.now.strftime("%d/%m/%Y").split("/").map! {|x| x.to_i}

age = todays_date[2] - birthday_date[2]

if todays_date[1] < birthday_date[1] 
 age -= 1 
elsif todays_date[1] == birthday_date[1]
	(todays_date[0] == birthday_date[0]) ? age : (todays_date[0] < birthday_date[0]) ? age -=1 : age
else
	age
end

if todays_date[0] == birthday_date[0] && todays_date[1] == birthday_date[1]
	puts "HAPPY BIRTHDAY"
end

puts "SPANK! " * age
