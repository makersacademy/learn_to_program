# change working directory
Dir.chdir 'C:/Users/CL/Pictures/ruby_test_pics' #'to be figured out'

# location to look for jpgs - creates an array with jpgs as elements
pic_names = Dir['F:/photos/**/*.jpg']

puts "please name this batch"
batch_name = gets.chomp

puts "" 
print "Downlaoding #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
	print
	'.' # makes a 'dot-dot' progress bar..

	new_name = if pic_number < 10 
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end
# add an if else to stop copying over existing file!
	if File.exists?(new_name)
		# renames file to stop over writing
		File.rename name, new_name[0...-4]+"(copy).jpg" 
		else
			File.rename name, new_name
		end

	pic_number = pic_number + 1
end
