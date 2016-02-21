def happy_birthday date
	age = ( (Time.now - date) / 31536000 ).floor
	
	puts "You are #{age} years old. Bend over!"
	puts
	puts "SPANK!" * age
	puts
end

happy_birthday(Time.gm(1972,3,3))