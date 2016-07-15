Dir.chdir 'C:/Users/Ebere/Pictures/holidays' # Where pictures will be moved to.
pic_names = Dir['C:/Users/Ebere/Pictures/spain/**/*.jpg'] # Where pictures will be moved from.
puts 'What would you like to call this batch?' # ...of pictures
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: " # no of files that will be downloaded

pic_number = 1     # counter to number pics
pic_names.each do |name|
print "." # This is our "progress bar".
new_name = if pic_number < 10
"#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end
      # Checking if file name already exists, if so, inform user and exit
if File.exist? new_name
puts "File name already exists, please try again with another name"
exit

else

      # If the file name doesn't exist, this moves and renames the picture.

File.rename name, new_name
# Finally, we increment the counter.
pic_number = pic_number + 1
end
puts
puts "Done"