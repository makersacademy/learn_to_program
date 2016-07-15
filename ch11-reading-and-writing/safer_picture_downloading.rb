Dir.chdir('/users/mali/desktop/photos_to_rename')
pic_names = Dir['*.jpg']

puts "What would you like to call this batch of photos?"
batch_name = gets.chomp
puts ''
print "Downloading #{pic_names.length} files:  "

pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exists?(new_name) == true  # checking to see if filename already exists to prevent overwriting
    puts "Error: One or more file by this name already exists"
    exit
  else
    File.rename(name,new_name)
    pic_number += 1
  end
end
puts ""
puts ''
puts "Picutures renamed :)"
