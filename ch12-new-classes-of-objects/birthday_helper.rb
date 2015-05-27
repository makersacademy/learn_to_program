# /usr/bin/env ruby

birthdays = Hash.new

f = File.open("ch12-new-classes-of-objects/birth_dates.txt", "r")

f.each_line do |line|
	name = line.split("\t")[0]
	birthdate = line.split("\t")[1].chomp
	birthdays[name] = birthdate
end

f.close

puts "Who's birthday do you need to know?"
want = gets.chomp

puts "It's #{birthdays[want]}"