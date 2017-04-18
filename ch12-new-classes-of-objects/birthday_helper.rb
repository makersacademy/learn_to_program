birthday_hash = {}

File.read('/Users/paulkenrick/Desktop/Test_Playlist/birthdays.txt').each_line do |line|
	line = line.chomp
	birthday_hash[line.split(', ')[0]] = line.split(', ')[1..2].join(', ')
end

print "Please enter a name: "
name = gets.chomp
puts "#{name}'s birthday is #{birthday_hash[name]}"

