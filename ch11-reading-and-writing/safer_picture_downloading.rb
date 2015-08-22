Dir.chdir '/Users/michaelroger/Documents/'

txt_files = Dir['/Users/michaelroger/Documents/*.txt']

puts 'What would you like to rename this batch?'
batch_name = gets.chomp
puts

file_num = 0

txt_files.each do |name|
	new_name = if file_num < 10
					"#{batch_name}_0#{file_num}.txt"
				else
					"#{batch_name}_#{file_num}.txt"
				end
	if File.exists?(new_name)
		puts "#{new_name} already exists. Cannot overwrite existing files. GAME OVER."
		exit
	end
	file_num = file_num + 1
end


print "Renaming #{txt_files.length} files: "

file_num = 0

txt_files.each do |name|
	print '.'
	new_name = if file_num < 10
					"#{batch_name}_0#{file_num}.txt"
				else
					"#{batch_name}_#{file_num}.txt"
				end
	File.rename name, new_name

	file_num = file_num + 1
end

puts

puts 'Done, cutie!'
