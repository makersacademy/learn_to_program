#  First we find all of the pictures to be moved.
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
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
  #  This renames the picture, but since "name"
  #  has a big long path on it, and "new_name"
  #  doesn't, it also moves the file to the
  #  current working directory, which is now
  #  Katy's PictureInbox folder.
  #  Since it's a *move*, this effectively
  #  downloads and deletes the originals.
  #  And since this is a memory card, not a
  #  hard drive, each of these takes a second
  #  or so; hence, the little dots let her
  #  know that my program didn't hose her machine.
  #  (Some marriage advice from your favorite
  #  author/programmer:  it's all about the
  #  little things.)
  #  Now where were we?  Oh, yeah...
  if File.exist?(new_name)
    puts "Error, file with name #{new_name} already exists"
    exit
  else
    File.rename name, new_name
  end
  #  Finally, we increment the counter.
  pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'
