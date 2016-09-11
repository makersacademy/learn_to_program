Dir.chdir '/home/ubuntu/workspace/Projects/Pictures1'
pic_names = Dir['/home/ubuntu/workspace/Projects/PicsOrigin/*.JPG']

puts "What would you like to call this batch?"
batch_name = gets.chomp
print "Downloading #{pic_names.length} files: "
pic_number = 1 #count from one

pic_names.each do |name| 
      print '.' #progress bar
      
      
      new_name = if pic_number < 10
       "#{batch_name}0#{pic_number}.jpg" #adds a zero to the filename
    else
        "#{batch_name}#{pic_number}.jpg"
    end
   if File.exists? new_name
       puts "filename exists"
   else
    File.rename name, new_name
   end
    pic_number = pic_number + 1
end
