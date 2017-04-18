Dir.chdir '/workspace/projects/learn_to_program/ch11-reading-and-writing/test1'
# First we find all of the pictures to be moved.
pic_names = Dir['/workspace/projects/learn_to_program/ch11-reading-and-writing/test']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
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

if File.exist?(new_name) == true then exit
elsif File.exist?(new_name) == false then File.rename name, new_name
# Finally, we increment the counter.
pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done!'
