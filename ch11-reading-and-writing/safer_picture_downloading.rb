Dir.chdir "#{ENV['HOME']}/Picture"
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10 "#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg" end

File.exist?("#{new_name}.jpg") 
	if true
		File.rename ("#{new_name_version_2}.jpg")
	else
		File.rename name, new_name
	end
end
pic_number = pic_number + 1
puts
puts 'Done'