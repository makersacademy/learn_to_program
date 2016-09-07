Dir.chdir '/Users/rosie/Pictures/'

pic_names = Dir['/Users/rosie/Desktop/*.jpg']
puts 'What would you like to call this batch of images?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
	print '.'
	new_name = if pic_number < 0
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
	
	if File.exist?(new_name)
		puts 'File name conflict. Aborting renaming process.'
		exit
	else
		File.rename name, new_name
		pic_number = pic_number + 1
	end
end
puts
puts 'All done!'