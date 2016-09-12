Dir.chdir '/Users/andyjenkins/Pictures/Picture_Inbox'

pic_names = Dir['/Users/andyjenkins/Pictures/Picture_Origin/*.{JPG.jpg}']

puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "

#counter is below:

pic_number = 1

pic_names.each do |name|
  print '.' # this is a progress bar

  new_name = if pic_number < 10
    "batch_name0#{pic_number}.jpg" #adds zero to the filename
  else
    "batch_name#{pic_number}.jpg"
  end

  # This renames the picture.

  if File.exists? new_name
    puts "filename exists, exiting"
    exiting

  else
    file.rename name, new_name
    # Finally, we increment the counter.
    pic_number += 1
  end
end

puts
puts 'Finished!'
