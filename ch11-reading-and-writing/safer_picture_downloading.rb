Dir.chdir '/home/valentina/Pictures'
#First we find all of the pictures to be moved. Search in the folder and all subfolders with **/
pic_names = Dir['/home/valentina/Downloads/**/*.{JPG,jpg}' ]
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
pic_number = 1
pic_names.each do |name|
	print '.' #This is our "progress bar".
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
	if File.exist? new_name
		puts
		puts 'ERROR!!! File #{new_name} already exists,
			please restart and choose another batch name'
		exit
	end
	File.rename name, new_name

	pic_number = pic_number + 1
end
puts
puts 'Done, cutie!'# your code here