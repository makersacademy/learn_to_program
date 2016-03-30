# your code here

Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
# First we find all of the pictures to be moved.
pic_names = Dir['F:/**/*.jpg']
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

  if File.exist?(new_name)
    puts("detected same file name, to avoid overwrite program will exit now")
    exit
  else
    File.rename name, new_name
  end
  pic_number = pic_number + 1
end

puts "\n Move successful"