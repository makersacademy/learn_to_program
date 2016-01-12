def birthday_helper name
	file = 'names.txt'

	my_hash = {}

	now = Time.new

	name_array = File.read file

	name_array.each_line do |line|
		# splits every line, first it splits by comma to preserve the name and stores it as a key to my_hash
		# and for the value it splits by space to preserve the comma.
		my_hash[line.split(",")[0]] = line.split(" ")[-3..-1].join(" ")
	end 

	month_day = my_hash[name].split(" ")[-3..-2].join(" ")
	year_to_i = my_hash[name].split(" ")[-1].to_i + 1

	age = now.year - year_to_i

	puts "#{name}: #{my_hash[name]}. His next bday will be on #{month_day} #{year_to_i}",
		 "And he is #{age} years old"

end

puts "Enter a name: "
name = gets.chomp

birthday_helper name