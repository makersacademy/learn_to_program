working_dir = 'D:/RUBY_TEST_DELETE/New_loc'      #Where files will be moved. The current working directory.
Dir.chdir working_dir
pic_names = Dir['D:/RUBY_TEST_DELETE/Orig_loc/*.jpg']	# First we find all of the pictures to be moved. 
puts "This is a list of all the files:"
puts pic_names; puts
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
dups = ""		#String to hold duplicate file names.
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today, though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".

	new_name = 						#number will be preceded by 0 if < 9.
	if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
	
	if FileTest.exist? new_name 
		dups += "File '#{new_name}' exists.\n" 
	end
	while FileTest.exist? new_name 			#File.exist? (pass it a filename, and it will return true or false) 
	   new_name += '(duplicate).jpg'		# or could "exit" from the prog altogether as another option.
	end
	
# This renames the picture, but since "name" has the full path on it, and "new_name"
# doesn't, it also moves the file to the current working directory. Since it's a *move*, this effectively
# downloads and deletes the originals. 
File.rename name, new_name

pic_number = pic_number + 1    #If counter is not incremented the files will all write to the same name - hence all but one will be deleted!
end
if dups != ""
	puts; puts
	puts "The following files already exist in the target directory:"
	puts dups
end	

puts
puts 'The rename/move is complete.'