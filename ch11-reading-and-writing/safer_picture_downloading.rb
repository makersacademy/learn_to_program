#Dir.chdir "home/Desktop/Pictures"

Pictures_list = Dir["**/*.{jpg,JPG}"]

puts "What's the name of this batch: "
batch_name = gets.chomp

pic_nr = 1

Pictures_list.each do |name|
	print "."

	if pic_nr < 10
		new_name = "#{batch_name}0#{pic_nr}"
	else
		new_name = "#{batch_name}#{pic_nr}"
	end

	if File.exist? (new_name)
		exit
	else
		File.rename(name, new_name)
	end

	pic_nr += 1

end