# safer picture downloading
Dir.chdir ("/Users/syalniz/Desktop/Projects/learn_to_program-master/learn_to_program/bilder_ruby/")
pic_names = Dir["/Users/syalniz/Desktop/Projects/learn_to_program-master/learn_to_program/bilder_ruby_test/*.JPG"]
batch_name = "Test"
puts pic_names.length
puts 
print "Downloading #{pic_names.length} files: "
pic_number = 1 
pic_names.each do |name|
	print "." 
	new_name = if pic_number < 10
	"{#batch_name}0 #{pic_number}.jpg"
	else 
		"{batch_name}#{pic_number}.jpg"
	end 
	while FileTest.exist? new_name
		new_name += "a"
	end 
	File.rename name, new_name
	pic_number = pic_number +1
end 
puts 
puts "DONE!"
