while true
	puts "Enter your birthday in format: DD/MM/YYYY"
	bday_arr = gets.chomp.strip.split('/')
	day = bday_arr[0].to_i
	mon = bday_arr[1].to_i
	yea = bday_arr[2].to_i
	if (1..31).include?(day) && (1..12).include?(mon) && (1900..Time.now.year).include?(yea)
		bday = Time.gm(yea, mon, day)
		break
	else
		puts "ERROR: Your entered date is wrong"
	end
end

age = Time.now.year - bday.year
age -= 1 if Time.now < bday + age

puts "-" * 20
puts "Your age is: #{age}"
puts "SPANK! " * age