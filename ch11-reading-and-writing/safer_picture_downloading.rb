#define where you want the pictures
  Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

#define where current pictures live
  old_pictures = Dir['F:/**/*.jpg']

#sets a name for batches
  batchname = gets.chomp

#defines the naming protocoll

  def picturename oldpicture
    if currentpicture > 9
      name = batchname + "_" + currentpicture
    else
      name = batchname + "_" + "0" + currentpicture
  end

#do it
  puts "OK! Renaming #{old_pictures.length}!"
  currentpicture = 0

  old_pictures.each do |oldpicture|

  picturename oldpicture

    if File.exist? name
      puts "This one already existed! Did not overwrite!"
    else
      file.rename oldpicture name
    end

    currentpicture +=1
    print "."
  end

  puts
  puts "All done sister!"
