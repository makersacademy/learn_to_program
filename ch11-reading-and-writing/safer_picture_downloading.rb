Dir.chdir 'C:/Documents and Settings/Me/Library'

pic_names = Dir['F:/**/*.{png}']
puts 'What would you like to call this batch?' batch_name = gets.chomp
#Yes, I’m using forward slashes. Yes, Windows uses backslashes. Yes, it’s perfectly OK to use forward slashes in Ruby. This helps make Ruby programs more cross-platform (though obviously not this one—it runs only on Katy’s machine).
￼￼￼￼￼￼￼￼￼￼￼￼￼
puts

if File.exist? batch_name == false
	puts "PLease use a unused batch name"
	exit
else
	print "Downloading #{pic_names.length} files: "

	pic_number = 1
	pic_names.each do |name|
		print '.' 
		new_name = 	if pic_number < 10 
						"batch_name0#{pic_number}.png"
					else
						"batch_name#{pic_number}.png" 
					end
		File.rename name, new_name

		pic_number = pic_number + 1
	end
else