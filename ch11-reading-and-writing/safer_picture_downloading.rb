# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.

Dir.chdir '/home/stevie/Test2'

# First we find all of the pictures to be moved.
pic_names = Dir['/home/stevie/Test1/*.jpg']

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
    "#{batch_name}0#{pic_number}"
  else
    "#{batch_name}#{pic_number}"
  end

  save_name = new_name + '.jpg'
  while FileTest.exist? save_name
    new_name += 'a'
    save_name = new_name + '.jpg'
  end

  # This renames the picture, but since "name"
  # has a big long path on it, and "new_name"
  # doesn't, it also moves the file to the
  # current working directory, which is now
  # Katy's PictureInbox folder.
  # Since it's a *move*, this effectively
  # downloads and deletes the originals.
  # And since this is a memory card, not a
  # hard drive, each of these takes a second
  # or so; hence, the little dots let her
  # know that my program didn't hose her machine.

  File.rename name, save_name
  # Finally, we increment the counter.
  pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'
