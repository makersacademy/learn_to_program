Dir.chdir "/home/ubuntu/workspace/sample_files"
puts Dir.pwd
pic_names = Dir["*.jpg"]

puts "What would you like to call the current batch?"
batch_name = gets.chomp

puts 
print "Downloading #{pic_names.length} files: "
pic_number = 1 

pic_names.each do |name|
	print ".."

	new_name = if pic_number < 10 
	"#{batch_name}0#{pic_number}.jpg"
	else "#{batch_name}#{pic_number}.jpg"
	end
	
	while File.exist?(new_name)
	puts "Error, file #{new_name} already exists, please choose an alternative name:"
	new_name = gets.chomp 	

	end
	
	File.rename name, new_name
	pic_number += 1
end

puts
puts "Operation completed successfully!"
