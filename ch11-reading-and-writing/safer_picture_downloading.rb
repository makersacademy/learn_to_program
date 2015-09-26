Dir.chdir '/Users/Admin/Makers_Files/Edited_Coding_pics'
pic_names = Dir['/Users/Admin/Pictures/Coding_pics/**/*.{jpg,JPG,JPEG,TIFF,PDF,PNG}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print '.'
	new_name = if pic_number < 10
		
		if File.exist?("#{batch_name}0#{pic_number}.jpg")
			puts "This file already exists."
			"#{batch_name}0#{pic_number}_1.jpg"
	else
		"batch_name0#{pic_number}.jpg"
	end

		if File.exist?("#{batch_name}#{pic_number}.jpg")
			puts "This file already exists."
			"#{batch_name}#{pic_number}_1.jpg"
		else
			"#{batch_name}#{pic_number}.jpg"
		end	
	end

File.rename name, new_name

pic_number = pic_number + 1

end			

puts
puts 'Done!'