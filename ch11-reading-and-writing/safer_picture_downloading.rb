Dir.chdir '/Users/GotWai/Desktop/TestPhotos'
#  First we find all of the pictures to be moved.
pic_names = Dir['/Users/GotWai/Desktop/ImportPhotos/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
puts "Downloading #{pic_names.length} files..."
# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
	
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
		else
		"#{batch_name}#{pic_number}.jpg"
	end

	if File.exist?(new_name)
		while true
			puts "#{new_name} already exists, do you wish to overwrite it? Answer Y/N or Q to quit"
			answer = gets.chomp.downcase

			if answer == 'y'
				File.rename(name, new_name)
				break
			elsif answer == 'n'
				break
			elsif answer == 'q'
				puts "Terminating program..."
				exit
		 	end
		end
	else
		File.rename name, new_name
	end
  
  #  Finally, we increment the counter.
  pic_number = pic_number + 1
end

puts 'Copying Complete.'