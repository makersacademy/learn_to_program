# your code here
Dir.chdir '/home/frunez/Pictures'

pic_names = Dir['/home/frunez/Downloads/*.{jpg,png}']

puts 'Name photo batch:'
batch_name = gets.chomp 

puts 
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each {|name| 
	print '='
	
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
	
	if File.exist? new_name
		puts "\n\nfilename #{new_name} already exists"
		exit
	else File.rename name, new_name
		pic_number = pic_number + 1
	end}

puts
puts 'Done!'
