# go into end destination of pictures
puts "searching for the destination of your pictures"
Dir.chdir '/Users/rosieallott/Pictures/NewDir'
# find the pictures to be moved - effectively changes directory too?
pic_names = Dir['/Users/rosieallott/Pictures/SourceDir/**/*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
# set and define counter
pic_number = 1

pic_names.each do |name|
  print "." # progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name
    puts "ERROR ERROR - already exists"
    exit
  end

  # renames and moves pictures (and deletes original apparently)
  File.rename name, new_name
  # increment counter
  pic_number += 1
end

puts # so as not to be on progress bar line
puts "Done"
