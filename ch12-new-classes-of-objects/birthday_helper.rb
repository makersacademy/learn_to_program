
#Make a dictionary

bd_dict = {}

File.open('birthdays.txt', 'r') do |f|
	f.each_line do |line|
		name = line[0...line.index(",")]
		date = line[line.index(",")+1..-1].strip
		bd_dict[name] = date
	end
end

#Change date format to use in Time. Of course there was an easier way!)

def format_date bd
	year = bd[-4..-1].to_i

	month_lib = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
			'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
	month = month_lib.index(bd[0..2])+1

	day = bd[3...bd.index(',')].strip.to_i

	return year, month, day
end

#When next birthday will be and how old a person will be

def when_nb_and_age(name, bd_dict)
	if bd_dict[name] == nil
		puts "I do not have this name."
	else
		bd_year, bd_month, bd_day = format_date(bd_dict[name])
		bd = Time.new(bd_year, bd_month, bd_day)
		cd = Time.new #current date

		if Time.new(cd.year, bd.month, bd.day) < cd
			next_bd = Time.new(cd.year+1, bd.month, bd.day)
			age_to_be = cd.year-bd.year+1
		else
			next_bd = Time.new(cd.year, bd.month, bd.day)
			age_to_be = cd.year-bd.year
		end

		puts "Next birthday will be #{next_bd}. #{name} will be #{age_to_be}."

	end
end

puts "Give me a name, please"

name = gets.chomp

when_nb_and_age(name, bd_dict)



