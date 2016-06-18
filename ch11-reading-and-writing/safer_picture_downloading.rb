Dir.chdir '/Users/NNS/image_train/img'

pic_names = Dir['/Users/NNS/image_train/*.{JPG,jpg}']
if pic_names == []
puts "No files have been found to perform move/rename task"
exit
end

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name, index|
print "."
new_name = if pic_number < 10
  "#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end
if File.exist? new_name
puts "\nFilename is already exist. Quitting...\n"
exit
else
File.rename name, new_name

end
  pic_number = pic_number + 1
end
puts
