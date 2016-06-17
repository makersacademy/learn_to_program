Dir.chdir '/Users/Aga/Pictures/Holiday' # Destination folder
pic_names = Dir['/Users/Aga/Pictures/*.{JPG,jpg}'] # Finding pictures to be moved

puts 'Please enter a name for this batch:'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files" # shows how many files there

pic_number = 1
pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}-0#{pic_number}.jpg"
  else
    "#{batch_name}-#{pic_number}.jpg"
  end

  if File.exist?(new_name) == true
    File.rename name, new_name.insert(-5, '(2)') # if file exists, adds a (2) to the end of the new file
  else
    File.rename name, new_name
  end

  pic_number += 1
end

puts
puts 'Job done!'
