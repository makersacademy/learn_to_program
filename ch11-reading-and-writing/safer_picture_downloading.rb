# safer picture downloading application

Dir.chdir "/Users/shane/temp/ch11pictures"

# Find the pictures to be moved
pic_names = Dir["/Users/shane/Downloads/*.jpeg"] 

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print "."

	new_name =  if pic_number < 10
		"#{batch_name}0#{pic_number}.jpeg"
	else
		"#{batch_name}#{pic_number}.jpeg"
	end

	if File.exist? new_name
		puts "File exists."
		exit 
	else
		File.rename name, new_name
	end

	pic_number += 1
end

puts
puts "All done!"