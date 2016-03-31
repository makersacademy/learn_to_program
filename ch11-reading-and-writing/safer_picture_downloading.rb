Dir.chdir "/sitys/Pictures/2015" # change directories to the directory in which your photos are
pic_names = Dir["/sitys/Pictures/Surfing"] # set pic_names to an array of the names of the photos in "Surfing"

puts "What would you like to call this batch?" # what do you want to rename the batch of photos
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1 # this is the counter, starts at 1 rather than 0

pic_names.each do |name| # iterate the following for each name in the array of picture names
	print "." # this is the progress bar
	new_name = "#{batch_name}_#{pic_number}.jpg" # rename the photos and set it to the variable new_name
	
	File.rename(name, new_name) # renames the picture AND moves the file to the current working directory as this is where new_name is (./new_name)
	pic_number += 1 # everytime it does this, the pic_number increments by 1

	exit if File.exist?(new_name) # to make sure you do not overwrite a file: exit acts like return and quits
	end

end

puts # so we are not on the progress bar line
puts "FIles downloaded to #{pic_names}"
