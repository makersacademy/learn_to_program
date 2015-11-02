# For Katy, with love.
# (I always write little notes in the programs
# I write for her. I deleted all of the dirty
# ones, though, so that one is all that's left.)
# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.

Dir.chdir('/Users/mahmudhussain/Documents/makers_mp3')

# First we find all of the pictures to be moved.
pic_names = Dir['/Users/mahmudhussain/desktop/*.txt']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
# This will be our counter. We'll start at 1 today,

# though normally I like to count from 0.

pic_number = 1

	pic_names.each do |name|
		print '.' # This is our "progress bar".
		new_name = if pic_number < 10
						"#{batch_name}0#{pic_number}.jpg"
				   else
						"#{batch_name}#{pic_number}.jpg"
					end
		if File.exist?(new_name)
			puts "Please choose another name as this name already exists"
			rename_file(new_name)
			#File.rename new_name, file_name
			pic_number = pic_number + 1
		else
			File.rename name, new_name
			pic_number = pic_number + 1
		end
	end

def rename_file file_name
	puts "Please enter new file name"
	name = gets.chomp
	if File.exists?(name)
		puts "Please choose another name as this name already exists"
		rename_file(name)
	else
		File.rename file_name, name
	end
end

puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'