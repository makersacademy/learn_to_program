Dir.chdir '/Users/briankaty1/Desktop'

pic_names = Dir['/Users/briankaty1/Desktop/MakersWeek2/Pictures']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print '.'

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	if File.exist?(new_name)
		puts "Sorry, that batch name already exists."
		exit
	else
		File.rename name, new_name
	end

	pic_number = pic_number + 1
end
