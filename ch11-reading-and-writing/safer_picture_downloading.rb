Dir.chdir(#Enter path which locates the directory that contains the files)

pic_names = Dir["*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print '.'
	new_name = "#{batch_name}_#{pic_number}.jpg"
	if File.exist?(new_name) == true
		puts "Error, file, #{new_name} already exists!"
		break
	else
	File.rename name, new_name
	pic_number += 1
end
end