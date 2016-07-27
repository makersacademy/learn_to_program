# This is where the pictures will be stored
Dir.chdir '/Users/Billy/Pictures'
# First we find all the pictures to be moved:
pic_names = Dir['/dev/disk2/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:   "

# This is our counter, starting at 1
pic_number = 1

pic_names.each do |name|
  print '.' # This is the progress bar
  new_name = if pic_number < 10
    "batch_name0#{pic_number}.jpg"
  else
    "batch_name#{pic_number}.jpg"
  end
  # Checks if file exists, asks if overwrite intended.
  # If 'true' and 'yes', message is displayed and program is aborted.
  if File.exist? new_name
    puts "Looks like #{new_name} already exists. Overwrite file? y/n"
    overwrite = gets.chomp.downcase
    if overwrite == 'n'
      puts "Download aborted"
      exit
    end
  end
  # This renames the picture, but since 'name' and 'new_name' have different paths,
  # it also moves the file to the current working directory (Pictures).
  # Since it is a move, this downloads and deletes the original
  File.rename name, new_name

  pic_number += 1
end

puts
puts 'Done!'
