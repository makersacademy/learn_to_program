
Dir.chdir '/Users/kass/Desktop/picturesInbox' # target directory
pic_names= Dir['/Users/kass/Desktop/picturesSource/**/*.jpg']
puts "Hello!"
puts "How would you like to name this batch?"
batch_name= gets.chomp

pic_number= 1
pic_names.each do |name|
    
    # condition needs improvement (regexp)
    # Dir['*.jpg'].any? {|x| x =~ /#{batch_name}/}

    if FileTest.exist? ("#{batch_name}0#{pic_number}.jpg") or FileTest.exist? ("#{batch_name}#{pic_number}.jpg") 

        puts ""
        puts "- - - - - - - - - - - - - - - - - - - - - "
        puts "WARNING! this batch name already exists"
        puts "- - - - - - - - - - - - - - - - - - - - - "
        puts ""
        puts "Would you like to rename this batch? y/n"
        answer= gets.chomp
        if answer == 'y'
            puts 'Enter new name, please'
            batch_name= gets.chomp
        else
            puts "The file will be written over"
        end
    end
        
        new_name= if pic_number < 10
            "#{batch_name}0#{pic_number}.jpg"
        else
            "#{batch_name}#{pic_number}.jpg"
        end

        
        print "Downloading #{new_name}"
        File.rename name, new_name
        pic_number= pic_number + 1
    puts ""
end
print ''
puts "- - - - - - - - - - - - - - - - - - - - - "
puts "- - - - - - - - - - - - - Done! Thank you"
puts ""

