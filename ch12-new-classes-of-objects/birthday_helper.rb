Dir.chdir("/Users/Hamza/desktop")

file = 'exercise.txt'
birthdays = {}
File.readlines(file).each do |line|
	line = line.chomp
	first_comma = 0
while line[first_comma] != ',' && first_comma < line.length
	first_comma += 1
end
	name = line[0..(first_comma - 1)]
	date = line[-12..-1]

birthdays[name] = date
end

puts "Whose birthday would you like to know?"
person = gets.chomp

if birthdays[person].nil?
	puts "I'm afraid we do not know who #{person} is."
else
	puts birthdays[person]
end