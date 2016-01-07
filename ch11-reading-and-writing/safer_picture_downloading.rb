pic_names = Dir['F:/**/*.jpg']

puts 'What should this batch be called?'
batch_name = gets.chomp

puts
print 'Downloading #{pic_names.length} files: '

pic_number = 1

pic_names.each do |name|
	print '.'
	new_name = if pic_number < 10
		'#{batch_name}0#{pic_number}.jpg'
	else
		'#{batch_name}#{pic_number}.jpg'
	end

	File.rename name, new_name
	pic_number = pic_number + 1
end

# so I need to set up a jpg file (and adapt) to make this work - looked at CP solution which blew my mind...