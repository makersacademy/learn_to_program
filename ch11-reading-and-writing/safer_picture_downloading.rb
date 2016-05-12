Dir.chdir('/Users/paulkenrick/Desktop/Test_Photo_Outbox')
pic_names = Dir['/Users/paulkenrick/Desktop/Test_Photo_Inbox/*.JPG']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
	print '.' # This is our "progress bar".
	if pic_number < 10
		new_name = "#{batch_name}0#{pic_number}.jpg"
	else
		new_name = "#{batch_name}#{pic_number}.jpg"
	end

	if File.exists?(new_name)
		puts
		puts "The distination folder already contains a file named #{new_name}\nThe program will stop without copying this file."
		exit
	else
		File.rename(name, new_name)
		pic_number = pic_number + 1
	end
end

puts

puts 'Transfer Complete'