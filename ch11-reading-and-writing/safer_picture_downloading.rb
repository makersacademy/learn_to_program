# directory to store all the pictures
Dir.chdir '/Users/Yev/Pictures/'
# first we find all of the pictures to be moved
pic_names = Dir['/Users/Yev/**/*.{JPG,jpg}']

puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "

# counter
pic_number = 1

pic_names.each do |name|
  print '.' # progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  # check if a file exists in a folder
  if File.exist? new_name
    puts "The filename file already exists."
    exit
  else
    File.rename name, new_name

    pic_number += 1
  end
end