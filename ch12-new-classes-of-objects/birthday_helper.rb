birthdays = {}
File.read("/home/ants/web/makersAcademy/learn_to_program/ch12-new-classes-of-objects/birthdays.txt").each_line do |line|
	entry = line.split(',')
	birthdays[entry[0].downcase] = entry[1] + entry[2]
end

puts "Whose birthday would you like to know?"
input = gets.chomp.downcase

if birthdays[input]
	puts "#{input}'s birthday is #{birthdays[input]}"
else
	puts "ERROR: No birthday found."
end