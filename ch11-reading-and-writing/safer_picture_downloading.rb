Dir.chdir '/Users/Phoebe/Pictures' #this is where we want the pics to be moved to
# First we find all of the pictures to be moved.

pic_names = Dir['F:/**/*.jpg'] #this is where we find all the pictures (from say memory card noted the **/ means it is recursive i.e. go into sub directories)

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

# better practice to count from 0.
pic_number = 1

pic_names.each do |name|
	print '.' # This is our "progress bar".
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	while File.exists?(new_name)
		puts "There is already a file with the name #{renamed}.\n Please rename this file.\n Don't forget to write .jpg at the end of your file name!"
		new_name = gets.chomp
	end

File.rename name, new_name

pic_number += 1
end

puts 
puts 'Done!'

