Dir.chdir '/Users/Kate/desktop/Pictures'

pic_names = Dir['/Users/Kate/desktop/Pictures/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts 
print "Downloading #{pic_names.length} files: "
pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name
    puts
    puts "A file already exists with this name! Please re-run and choose a different name for this batch of images."
    exit
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end

puts
puts 'All done!'