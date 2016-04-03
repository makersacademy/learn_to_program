Dir.chdir 'C:/Documents and Settings/Darren/Pictures'

# First we find all of the pictures to be moved.

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|

File.rename name, new_name

  # Make sure we don't save over another file!!

  while FileTest.exist? new_name

  new_name += 'a'

  end

# Finally, we increment the counter.

pic_number = pic_number + 1