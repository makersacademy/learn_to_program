### Moving & renaming photos example ###

Dir.chdir '/Users/annemariekohler/Desktop/pine_moved_pics/' # got to directory
pic_names = Dir['/Users/annemariekohler/Desktop/pine_pics/**/*.jpg'] # find all pics

# Dir.chdir '/Users/annemariekohler/Desktop/pine_pics/' # got to directory
# pic_names = Dir['/Users/annemariekohler/Desktop/pine_moved_pics/**/*.jpg'] # find all pics

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# set up counter / starts with 1
pic_number = 1

pic_names.each do |name|
  print "." # "Progrss bar"

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts ""
    puts "File name already taken. Exit"
    puts ""
    exit
  else
    File.rename(name, new_name)
  end

  pic_number = pic_number + 1
end


puts # to escape progress bar line
puts "Finished!"
