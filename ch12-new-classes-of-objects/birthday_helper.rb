def birthday_helper text_file, name
	puts "Please give me the name in this format:[First Last]"
	name = gets.chomp

	the_hash_month = {}
	the_hash_day = {}
	the_hash_year = {}
	#break up text file and put it into hash
	text_file.eachline.chomp do |line|
		array = line.split(',')
		dates = array[1].split(' ')
		the_hash_month [array[0] => dates[0]]
		the_hash_day [array[0] => dates[1]]
		the_hash_year[array[0] => array[2]]
	end

	time_now = Time.new

	age = time_now.year - the_hash_year[name]

	month_hash = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12}

	if time_now.month < month_hash[the_hash_month[name]] || (time_now.month == month_hash[the_hash_month[name]] && time_now.day < the_hash_day[name])
		next_bday_year = time.year + 1
		age -= 1
	else 
		next_bday_year = time.year
	end

	puts "Their next birthday will be on #{the_hash_month[name]} #{the_hash_day[name]}, next_bday_year, and they will be #{age} years old!"
	
end