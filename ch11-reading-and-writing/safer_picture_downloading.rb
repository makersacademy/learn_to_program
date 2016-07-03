folder_name = 'Documents/pics/'
picture_names = Dir['*.{JPEG,jpeg}']

puts "What would you like to name this picture?"
answer1 = gets.chomp.downcase 

puts "downloading #{picture_names}.length.to_S files:"

pic_number = 1 
picture_names.each do |name|
print "."

new_picture_name = if pic_number < 10 
folder_name.to_s + answer1 + "0" + pic_number.to_S + ".jpg"
else 
folder_name.to_s + answer1 + pic_number.to_S + ".jpg"
end 

if File.exist? new_picture_name
puts "Sorry, file name already exists"
puts 
exit
else 
File.rename name, new_picture_name

end 

pic_number = pic_number + 1
end 

puts
"done"
