Dir.chdir 'C:\Users\Laurent\Downloads' 
pic_names = Dir['*.jpg']

puts 'What would you like to call this batch?' 
batch_name = gets.chomp 
puts 
print "Downloading #{pic_names.length} files: "

pic_number = 1 
pic_names.each do |name| 
print '.' 
if pic_number < 10 
	new_name = "#{batch_name}0#{pic_number}.jpg" 
else 
	new_name = "#{batch_name}#{pic_number}.jpg" 
end

if File.exist?(new_name) == false
File.rename name, new_name
elsif File.exist?(new_name) == true
	exit
end
pic_number = pic_number + 1 
end 