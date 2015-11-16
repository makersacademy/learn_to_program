# your code here

Dir.chdir '/Users/zade/Desktop/picTemp/'
pic_name = Dir['/Users/zade/Desktop/picTemp/*.{JPG,jpg}']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts
print "downloading #{pic_name.length} file: "

pic_number = 1

pic_name.each {|name| print '.'
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else 
		"#{batch_name}#{pic_number}.jpg"
	end	
		if File.exist? new_name
			puts "This file already exists."
			return "hello"
		else
			File.rename name, new_name
			pic_number += 1
		end

				} 
puts
puts 'Done, cutie!'

# >> What would you like to call this batch?