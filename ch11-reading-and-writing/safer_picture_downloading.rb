# your code here
Dir.chdir '/Users/Heather/Pictures'

pic_names = Dir['./**/*.jpg']

puts 'What would you like to call this folder?'
folder_name = gets.chomp

puts 
print "Downloading #{pic_names.length} files."

pic_number = 1

pic_names.each do |name|
	print '.'

	new_name = if pic_number < 10
		"#{folder_name}0#{pic_number}.jpg"
	else
		"#{folder_name}#{pic_number}.jpg"
	end

	if File.exist?(new_name) 
		puts "filename already exists, download stopped"
		exit
	else 
		File.rename name, new_name
	end
		
	pic_number = pic_number +1

end 

puts 'Done, cutie'