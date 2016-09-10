# change into the directory you want to work in
Dir.chdir "C:/Users/Li/Desktop/Dir/Dir2"

# find the original files
pic_names = Dir["C:/Users/Li/Desktop/Dir/Dir1/*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name0}#{pic_number}.jpg"
  end

    if File.exist?(new_name)
        puts "File #{new_name} already existed. Overwrite - Y / N ?"
        overwrite = gets.chomp

        if overwrite == "Y" || overwrite == "y"
            File.rename name, new_name
            pic_number += 1
        else
            pic_number += 1
        end

    else
        File.rename name, new_name
        pic_number += 1
    end
end


puts
puts "All done!"
