# your code hereDir.chdir '/Users/harrywynnwilliams/Projects/learn_to_program/photos' #all pics to be moved.
pic_names = Dir['/Users/harrywynnwilliams/Projects/learn_to_program/photos/*.jpg']
p pic_names
puts 'What would you like to call this batch?'
batch_name = "harrywynnwilliams"
puts
print "Downloading #{pic_names.length} files:  "
#This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
pic_number = 1

#pic_names.each {|file| p FileTest.exist? file}





pic_names.each do |name|



  print '.' # This is our "progress bar".


  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
        else
    "#{batch_name}#{pic_number}.jpg"
        end

      File.rename name, new_name
#   #  Finally, we increment the counter.
      pic_number = pic_number + 1
      end
    puts # This is so we aren't on progress bar line. puts 'Done, cutie!'
      puts 'Done, cutie!'
