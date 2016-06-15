Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}_0#{pic_number}.jpg"
  else
    "#{batch_name}_#{pic_number.jpg}"
  end
  if File.exist?(new_name)
    puts 'A file with the same name already exists in this directory.'
    puts 'Do you want to overwrite the file? y/n'
    reply = gets.chomp
    if reply == y
      File.rename name, new_name
      pic_number = pic_number + 1
    else
      puts 'Stopping file copy!'
      exit
    end
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end

puts
puts "Done!"
