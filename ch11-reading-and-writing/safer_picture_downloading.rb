Dir.chdir '/Users/michael/Dropbox/makers/pre_week2/learn_to_program/ch11-reading-and-writing/textfiles_copy_to'

# First we find all of the pictures to be moved.
pic_names = Dir['/Users/michael/Dropbox/makers/pre_week2/learn_to_program/ch11-reading-and-writing/textfiles/*.txt']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  if File.exist?("#{batch_name}0#{pic_number}.jpg")
    puts "\n"
    puts "ERROR - #{batch_name}0#{pic_number}.jpg already exists."
    puts "EXITING PROGRAMME"
    exit
  end
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  # Now where were we? Oh, yeah...
  File.rename name, new_name
  # Finally, we increment the counter.
  pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done.'
