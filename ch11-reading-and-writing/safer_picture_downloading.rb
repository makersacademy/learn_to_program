Dir.chdir '~/Pictures/To_Here'

pic_names = Dir '~/Pictures/Move_These/*.jpg'

puts 'What would you like to name this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:"

pic_number = 1

pic_names.each do |file|
	print '.'

	new_name = 
	if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
	
	file.rename name,new_name

	pic_number = pic_number + 1
end