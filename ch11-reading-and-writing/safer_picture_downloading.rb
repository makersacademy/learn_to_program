# ------------------ TO DO ------------------

# This was you having a go at this. But it is INCOMPLETE.
# There was no Rspec for this, so I moved on.

# COME BACK AND LOOK AT THIS CHAPTER (& THESE EXERCISES) LATER




Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# start our counter
pic_number = 1

pic_names.each do |name|
   print '.'     # progress bar

   if pic_number < 10
      new_name = "#{batch_name}0#{pic_number}.jpg"
   else
      new_name = "#{batch_name}#{pic_number}.jpg"
   end

   File.rename(name, new_name)
   pic_number += 1
end

puts "Finished!"
