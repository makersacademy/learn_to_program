
Dir.chdir '/Users/nobuyukifujioka/Documents/photos'

#  First we find all of the pictures to be moved.
pic_names = Dir['/Users/nobuyukifujioka/Google Drive/makersAcademy/learn_to_program/ch11-reading-and-writing/photoFrom/*.jpeg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
puts "Downloading #{pic_names.length} files:  "
# This will be our counter. We'll start at 1 today, 
# though normally I like to count from 0.
pic_number = 1

pic_names.each do |name|

	print '.' # This is our "progress bar".


	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpeg"
	else
		"#{batch_name}#{pic_number}.jpeg" 
	end

	puts "Picture No: #{pic_number}"

	if File.exist?(new_name)
		puts "Warning!"
		puts "This file: '#{new_name}' already exists."
		puts "I will not overwrite this for your safety."
		puts "Please change this file name before you move the new file into the destination folder."
		puts "Terminating the action."
		puts "Good Bye!"
		exit
	else 
	  File.rename name, new_name
	  puts "Success."
	  puts "Moved the file: '#{new_name}'"
	  puts
	end

	#  Finally, we increment the counter.
	pic_number = pic_number + 1

end
puts # This is so we aren't on progress bar line. 
puts 'Done, sir!'
