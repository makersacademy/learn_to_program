def check(name_i)

	@@name_match = false
	
	File.read('bdays').each_line do |line|
		
		whole_line = line.chomp
		length = whole_line.length
		first_comma = 0
		

		until (whole_line[first_comma] == ",") || (first_comma > length)
			first_comma += 1
		end

		name = whole_line[0..(first_comma-1)]
		date = whole_line[-12..-1]

		if name == name_i
			puts "#{name}'s Bday is on#{date}"
			puts  "And it's his #{2016 - whole_line[-4..-1].to_i} Bday"
			@@name_match = true
		end
	end

	if @@name_match == false
		puts "I don't know this person"
	end
end

puts "Name: "
n = gets.chomp

check(n)

