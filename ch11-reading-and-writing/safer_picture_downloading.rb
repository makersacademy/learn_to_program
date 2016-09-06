puts 'Where do you want to store your images?'
current_dir = gets.chomp
puts 'Where do you want to get the images from?'
origin_file = gets.chomp
origin = origin_file + '/**/*.jpg'

Dir.chdir(current_dir)
pic_names = Dir[origin]

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if !File.exist?(new_name)
    File.rename(name, new_name)
    pic_number = pic_number + 1
  else
    puts 'This file already exist. Do you want to replace it?'
  end
end
