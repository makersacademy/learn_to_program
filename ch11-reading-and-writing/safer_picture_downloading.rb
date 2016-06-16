pic_names = Dir['*.{JPG, jpg}']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
puts "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|


new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
else
    "#{batch_name}#{pic_number}.jpg"
end

if File.exist?(new_name)
	puts "This name already exists. Please choose another."
	exit
end

print '.'

File.rename name, new_name
pic_number = pic_number + 1
end

puts
puts "Done!"