# 1) find the directory where I want to store my pictures

Dir.chdir '/Users/mfperkins/Projects/learn_to_program/Pics'

# 2) find all the epcictures I want to be moved

picsToMove = Dir['/Users/mfperkins/desktop/Web_pics/**/*.jpg']

puts "What shall we call this batch?"
batch_name = gets.chomp

puts

print "Downloading #{picsToMove.length} files ..."

pic_number = 0
picsToMove.each do |old_name|
    print '.' ## sweet a progress bar! :)

    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
      else
        "#{batch_name}#{pic_number}.jpg"
      end
    if File.exist?(new_name)
      puts "That file already exists! Are you sure you want to continue? (yes/no)"
      answer = gets.chomp
      if answer == "yes"
        File.rename old_name, new_name
      else
      puts "Ok! Not copying!"
      exit
      end
    else
      File.rename old_name, new_name
    end
    pic_number += 1
end

puts
puts "Done! Sweet!"
