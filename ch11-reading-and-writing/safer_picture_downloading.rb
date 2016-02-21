Dir.chdir '/Users/andrewcookson/Makers/Tests/renamedphotos'
pic_name= Dir['/Users/andrewcookson/Makers/Tests/photos/**.{jpg,JPG}']


batch_name = "mentalphotos"
print "Downloading #{pic_name.length} files:"

pic_number = 1

  pic_name.each do |name|
      print '.'
      new_name = "#{batch_name}#{pic_number}.jpg"
      if File.exist?("#{batch_name}#{pic_number}.jpg")
        print "This picture is already here"
        exit
      else
      File.rename name, new_name
      puts "Copied #{batch_name}#{pic_number}.jpg"
      pic_number += 1
    end

  end