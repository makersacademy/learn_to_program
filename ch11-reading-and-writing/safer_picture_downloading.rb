Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg'] # finds the pics we want to move

puts "What would you like to call this batch of pictures?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  " #shows how many dling
pic_number = 1

pic_names.each do |name|
  print '.' #progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

while File.exists? (new_name)
  puts "There already exists a file with that name, please enter another:"
  new.name = gets chomp
end

  File.rename name, new_name

  pic_number = pic_number + 1
end

puts
puts 'Finished'
