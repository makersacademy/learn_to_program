#look for .jpg files on the camera
pic_names = Dir['~/Documents/Camera/*.jpg']

#change current directory to the folder we're moving the pictures to
Dir.chdir '~/Documents/Picture_storage/'

puts "What would you like to call this batch of photos?"
batch_name = gets.chomp

puts "Downloading #{pic_names.length} files: "

pic_number = 1 #counter

pic_names.each do |name|
  new_name = "batch_name#{pic_number}.jpg"    #goes through each photo and assigns it a new_name

  if name = new_name
    puts "File already exists!"     #error if trying to overwrite
    exit
  else
    File.rename name new_name      # otherwise moves and change sname of file to Picture_storage directory
  end

  pic_numer = pic_number + 1  #increment the counter
end

puts
puts "Photos moved succesfully!"
