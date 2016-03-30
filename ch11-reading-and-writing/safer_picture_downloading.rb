Dir.chdir('/Users/olliehaydon-mulligan/Documents/tester')

file_names = Dir['../Coding/Exercises/copy/*.rb']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{file_names.length} files: "

file_number = 1

file_names.each do |file|
	if File.exist? "file#{file_number}"
		puts "ERROR: file#{file_number} already exists in the directory..."
		exit
	else
		print '.'
		File.rename file, "file#{file_number}"
	end
end

puts 
puts "Done!"