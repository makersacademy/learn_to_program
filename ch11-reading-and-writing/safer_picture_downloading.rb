Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
pic_names=Dir['F:/**/*.jpg']
puts "What would you like to call this batch?"
batch_name=gets.chomp
puts
print "Downloading #{pic_names.length} files: "
pic number = 1
pic_names.each do |name|

	print '.' 
	
	new_name = pic_number<10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"
				
	new_name.exists? ? "Photo #{new_name} already exists in destination folder. File not copied." : File.rename name, new_name 
	pic_number+=1
end
puts
puts "Process Complete"
 