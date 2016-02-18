Dir.chdir 'pictures'

pic_names = Dir['../testpictures/*.jpg']

puts "Enter a name of the album"
batch_name  = gets.chomp

puts "Downloading... #{pic_names.length} files!"


pic_number = 1
pic_names.each do |name|

   new_name = if pic_number <10
      "#{batch_name}0#{pic_number}.jpg"
    else
    "#{batch_name}#{pic_number}.jpg"
    end
    if File.exist?(new_name)
       "Attempted to overwrite file. Process terminated" # !> unused literal ignored
      exit
    else
         File.rename name, new_name
    end
    pic_number += 1

end
