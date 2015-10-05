

Dir.chdir '$kmusson/Pictures'

# First find pics
pic_names = Dir['$kmusson/Pictures/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

# This will be our counter. 
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10
  "#{batch_name}0#{pic_number}.jpg"
  else
  "#{batch_name}#{pic_number}.jpg"
  end

# Since it's a *move*, this effectively
# downloads and deletes the originals.
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts # This is so we aren't on progress bar line.
puts 'Done!'
