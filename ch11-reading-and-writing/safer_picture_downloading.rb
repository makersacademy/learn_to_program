#  Changes directory to where pictures are to be saved
Dir.chdir '/Users/michaelcollins/pictures'
#  finds pictures to be moved
pic_names = Dir['/Users/michaelcollins/c**/*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1
# goes through each found file and applys code
pic_names.each do |name|
  print '.' # this is the progress bar to show user program working

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  # Checks that file does not already exist before renaming/moving
  if File.exist? new_name
    puts "ERROR: File already exists\nProgram will exit now"
    exit
  else
    File.rename name, new_name
    # remember to increment the counter!
    pic_number = pic_number + 1
  end
end

puts
puts 'Done!'
