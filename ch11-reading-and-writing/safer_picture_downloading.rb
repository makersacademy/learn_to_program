Dir.chdir '/Users/Colan/Desktop'
pic_names = Dir['/users/Colan/Desktop/Tempjpeg/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files:"

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10

    "#{batch_name}0#{pic_number}.jpg"

  else

    "#{batch_name}3{pic_number}.jpg"

if File.exist? new_name

  exit

end
  end



  File.rename name, new_name
  pic_number = pic_number + 1
end
puts
puts 'Done cutie!'
