Dir.chdir "/Users/michaello/Desktop/RUBY/chapter 11/pics"
pic_names = Dir['*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
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
  if  !(File.exist? new_name)
    File.rename(name, new_name)
  else
    abort("There is already a file named #{new_name}. Exiting the program. Either rename the existing file or choose a different name for your batch.")
  end
  #  Finally, we increment the counter.
  pic_number = pic_number + 1
end
