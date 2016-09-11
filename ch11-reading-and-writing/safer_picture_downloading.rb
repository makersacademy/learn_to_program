Dir.chdir '/This_PC/Users/Joe/Pictures'
 
pic_names = Dir['This_PC/F:/*.jpg']

puts 'What are we calling this group of snaps?'
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
    puts 'Done and dusted!'