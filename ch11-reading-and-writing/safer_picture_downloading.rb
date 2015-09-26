Dir.chdir '/home/alaan/Desktop/Pictures1'

pic_names = Dir['*.{jpg,jpeg}']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:    "

pic_number = 1

pic_names.each do |name|
	print '.'

	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
end


if File.exist?("#{new_name}")
	puts "Cannot re-name: an existing file already exists: type 'continue' to continue or hit enter to exit"
	response = gets.chomp
	if response == ""
		exit
	elsif response == "continue"
		File.rename name, new_name
	else
		puts "Please type 'continue' or hit enter. The program will exit after 3 requests"
	end
else
File.rename name, new_name
end
pic_number += 1

end

puts
puts "Done!"

