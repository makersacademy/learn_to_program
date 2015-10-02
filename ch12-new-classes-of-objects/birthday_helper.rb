Filename = "Birthday_file.txt"
birth_dates = {}
File.open('Birthday_file.txt') do |f|
	f.each_line do |name_entry|
	date = name_entry[-13..-1]
	name = name_entry [0..-15]
	birth_dates[name]=date
	end
end

puts "Enter name of whose birthday you want"
name = gets.chomp
date = birth_dates[name]
puts "The birthday is #{date}"


