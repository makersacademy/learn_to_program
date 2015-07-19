
# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.
Dir.chdir '/home/ps/Pictures'
# First we find all of the pictures to be moved.
pic_names = Dir['**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:
"
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
  # Now where were we? Oh, yeah...

    if File.exist?(new_name)
      exit
    else
      File.rename name, new_name
      # Finally, we increment the counter.
    end

  pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'

puts File.name
