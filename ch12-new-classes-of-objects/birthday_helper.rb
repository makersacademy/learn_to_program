
# read in the text file
names = File.read "birthdays.txt"

birthdays = {}

# split each line where there is a comma, add to hash as name => date key => value pair

	names.each_line do |line|
		name, date, birthday = line.split(',')
		birthdays["#{name}"] = "#{date + birthday}"
 	end


puts "Please type a name from the list."

name = gets.chomp

puts
puts "This person's birthday is on #{birthdays[name]}"

