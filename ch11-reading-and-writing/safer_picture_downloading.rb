# get pics from here
Dir.chdir '/mac/pictures/new_photos'
pic_names = Dir['/mac/pictures/photos/*.jpg']


puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files."
#are counter
pic_number = 1
pic_names.each do |name|
    print '.' #progress bar

    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end

    if File.exist? new_name
       puts "File already exist. Shutting down."
       exit
    else
        File.rename name, new_name
    end

    pic_number = pic_number + 1

end

puts
puts "Move complete!"
