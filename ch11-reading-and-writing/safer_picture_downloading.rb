Dir["*.jpg"] #we search for pictures in the working directory Dir.chdir doesn't work for me

pic_names = Dir["*.jpg"] 

puts "Select a name for this batch"
batch_name = gets.chomp

puts #so we have some space on as output
print "Downloading #{pic_names.length} files: "
puts #same reason as above

pic_number = 1
pic_names.each do |name|
	print "."
	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpg" #so we have batch01, batch02  and so on
	else
		"#{batch_name}#{pic_number}.jpg" # for 10 and above
	end
	if File.exists?(new_name)
		puts "#{new_name} arleady exists" #so we don't overwrite a picture with a same name
	else
	   File.rename name, new_name #changing names
end
	pic_number += 1 #re-start the count
end

puts
puts "Done!"

#so far I can't change to another directory, this works if I run the program in the same directory the files are in