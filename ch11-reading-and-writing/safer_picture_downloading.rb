Dir.chdir '/Users/dimdim/Desktop/Pictures'

pic_names = Dir['/Users/dimdim/Desktop/Camera/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1
pic_names.each do |name|
	print '.'
	new_name = if pic_number < 10 
			 	 "#{batch_name}0#{pic_number}.jpg"
		   	   else
			 	 "#{batch_name}#{pic_number}.jpg"
		   	   end

  	if File.exist? "#{batch_name}0#{pic_number}.jpg"
  		puts
  		puts "Error! Exiting program..."
  		raise "Batch name taken, unsafe to copy!"
  	else
		File.rename name, new_name
 		pic_number = pic_number + 1
 	end
end
puts
puts 'Done, cutie!'