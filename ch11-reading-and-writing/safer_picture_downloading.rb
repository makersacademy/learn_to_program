# shows pwd
Dir.pwd
# change directory to where you want files to be saved
Dir.chdir '/Users/Jen/someDir/pictures/'

# find all the pictures to be moved to the current directory
file_names = Dir['/Users/jen/Makers-Academy/pre-course/week2/ruby_files/**/*.jpg']

# give the batch of files a name
puts "What would you like to call this batch?"
batch_name = gets.chomp

# download pictures to pwd
print "Downloading #{file_names.length} files: "
# This is the counter
file_number = 1
file_names.each { |name|
		# does file already exist?
	# file renaming
	# iterate over all found files and rename
	print '.' #this is the progress bar
	new_name = if file_number < 10
				"#{batch_name}0#{file_number}.jpg"
			else
				"#{batch_name}#{file_number}.jpg"
			end	
	if File.exists?(new_name)
		puts "This file already exists. Do you want to overwrite this file?"
		answer = gets.chomp
		if answer == "yes"
			File.rename(name, new_name)
		else
			puts "Not moving this file."
		end
	else
		File.rename(name, new_name)
	end
	# increment counter
	file_number = file_number + 1
}

puts 
puts "Done!"