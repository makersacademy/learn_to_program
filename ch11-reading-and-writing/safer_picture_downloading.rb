# This is where we store pictures
Dir.chdir './target/'
# First we find all of the pictures to be moved.
pic_names = Dir['.././input/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1 #pic counter, starts at 1
pic_names.each do |name|
  print '.' # This is the "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  #check if the file already exists. If yes, message is displayed
  #and program stops
  if File.exist?(new_name)
    puts "#{new_name} already exists, program stops."
    exit
  else
    #renames file to the new name, and moves the file into target dir
    File.rename name, new_name
  end
  pic_number += 1
end
puts
