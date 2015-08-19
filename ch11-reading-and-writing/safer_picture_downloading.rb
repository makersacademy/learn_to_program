Dir.chdir 'C:/Users/Chris/Pictures'
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|

  print '.' 
  if pic_number < 10 
    File.exist? "#{batch_name}0#{pic_number}.jpg" ? exit : new_name = "#{batch_name}0#{pic_number}.jpg"
  else
    File.exist? "#{batch_name}#{pic_number}.jpg" ? exit : new_name = "#{batch_name}#{pic_number}.jpg"
  end
  pic_number = pic_number + 1
  end

puts 
puts 'Done!'