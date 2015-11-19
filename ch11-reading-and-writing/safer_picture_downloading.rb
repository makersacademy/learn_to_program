Dir.chdir '/Users/amyyang/Pictures/Wall_paper'

pic_names = Dir['/Users/amyyang/Pictures/Wall_paper/**/*.jpg']

puts 'What would you like to call this batch?'

batch_name = gets.chomp 

print "Downloading #{(pic_names.length)} files: "

pic_number = 1 

pic_names.each do |name|
	print '.' 

	new_name = if pic_number < 10
		if File.exist? "#{batch_name}0#{pic_number}.jpg" 
			puts "File already exists" 
		else "#{batch_name}0#{pic_number}.jpg"  
		end 

		if File.exist? "#{batch_name}#{pic_number}.jpg" 
			puts "File already exists"
			else "#{batch_name}#{pic_number}.jpg"
		end
	end
	File.rename(name, new_name)

	pic_number = pic_number + 1

end
puts "you are the best!"