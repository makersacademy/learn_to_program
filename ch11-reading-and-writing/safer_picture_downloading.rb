# your code here
Dir.chdir('~/Pictures')
pic_names = Dir['~/Downloads/**/*{.jpg,.JPG}']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1
pic_names.each do |name|
	print '.'
	new_name =  if pic_number < 10 
					"#{batch_name}0#{pic_number}.jpg"
		   		else
					"#{batch_name}#{pic_number}.jpg"
		   		end

	if File.exist?(new_name)
		puts "This name already exists."
		rename_file(name)
		pic_number = pic_number + 1
	else
		File.rename name, new_name
  		#  Finally, we increment the counter.
  		pic_number = pic_number + 1
  	end
end
puts
puts "Done"

def rename_file nme
	puts "Please specify a different filename"
	nme1 = gets.chomp
	if File.exist?(nme1) 
		puts "This name already exists."
		rename_file nme
	else
		File.rename nme, nme1
	end
end

