# your code here
Dir.chdir "./test/"
pic_names = Dir["./source/*.{jpg,JPG}"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
	print "."
	new_name  = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"
	while Dir_entries(pic_names).include?(new_name) do |pic_number|
		pic_number += 1 
		new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{bathc_name}#{pic_number}.jpg"
	end
	File.rename name, new_name
	pic_number += 1
end
puts
puts "Done!"

