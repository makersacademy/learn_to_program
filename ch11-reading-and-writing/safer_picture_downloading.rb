#Begin by moving to the location to save photos
Dir.chdir '/Users/zeshanrasul/Documents/Photos'

#Find all the pics to be moved
pic_names = Dir['/Users/zeshanrasul/Desktop/StockPhotos/*.jpg']

puts "What would you like to call this batch"
batch_name = gets.chomp

puts

puts "Downloading #{pic_names.length} files:   "

#Create a counter for going through pictures

pic_number = 1

#Iterate through each picture
pic_names.each do |name|
  print '.' #This will be our progress bar, we use print to stay on the same line

  #name our new photos
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  #since the filenames contain a new location, this is also a move of files
  #this effectively downloads and deletes the original photos
  #the dots are useful to make it clear that the program is progressing
  if File.exist?(new_name) #Stop the program if we are going to overwrite any files
    puts "This file already exists"
    puts "Closing program"
    exit
  else
    File.rename name, new_name  #rename the files
  end

  pic_number = pic_number + 1
  #THIS IS VERY IMPORTANT AS IT MOVES THROUGH ALL THE pictures
  #OTHERWISE WE WILL SIMPLY KEEP RENAMING AND DELETING OVER EVERY FILE

end

puts
puts "Done!"
