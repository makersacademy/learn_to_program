#Added features: 'abort' on line 25

Dir.chdir '/home/ubuntu/Projects/learn_to_program/ch11-reading-and-writing/dltst_write'

# First we find all of the pictures to be moved.
pic_names = Dir['/home/ubuntu/Projects/learn_to_program/ch11-reading-and-writing/dltst_read']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1

pic_names.each do |name|

# This is our "progress bar".
print '.'

abort("File name already in use- aborting.") if File.exist? 'bouncer'


new_name = if pic_number < 10
"#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end


File.rename name, new_name

# Finally, we increment the counter.
pic_number = pic_number + 1

#end removed from here
end
# This is so we aren't on progress bar line.
