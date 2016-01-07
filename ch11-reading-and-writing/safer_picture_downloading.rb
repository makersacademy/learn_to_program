Dir.chdir '/Users/Viola/Desktop/Photos_from_camera'

pic_names = Dir['Volumes/USB/**/*.jpg']

puts "What would you like to call this batch?"

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files:"

pic_number = 1

pic_names.each do |name| 
	print "."
	new_name = 
	if pic_number <10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	if File.exist?(new_name)
	return new_name.insert(-5, "copy")
	end

	
	File.rename name, new_name
	pic_number += 1
end

puts
puts "Downloaded"

