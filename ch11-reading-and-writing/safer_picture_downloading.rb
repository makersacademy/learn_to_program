Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
	print '.' 
	if pic_number < 10
		new_name = "#{batch_name}0#{pic_number}.jpg"
	else
		new_name = "#{batch_name}#{pic_number}.jpg"
	end

	if (File.exist?(new_name))
		exit
	else
	    File.rename name, new_name
	end
	pic_number = pic_number + 1
end
