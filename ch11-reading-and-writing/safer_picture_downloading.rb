#  This program safely copies all .jpg from current directory to a chosen image_path
image_path = './PictureInbox'
if Dir[image_path].empty?
	Dir.mkdir(image_path)
end
Dir.chdir(image_path)

#  First we find all of the pictures to be moved.
pic_names = Dir['../*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1
pic_names.each do |name|
	print '.' # This is our "progress bar".
	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg" 
	end


	if !File.exist?(new_name) 
		File.rename name, new_name
		pic_number = pic_number + 1
	else
		puts "\n\n"
		puts "ERROR! File '#{new_name}' already exists in #{Dir.pwd}"
		exit
	end
end

puts 
puts 'Done!'