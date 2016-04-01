
#right lets change working directory for convenience 

Dir.chdir '/home/ubuntu/workspace/pictures'

#first find all the pictures to be moved

pic_names = Dir['/home/ubuntu/workspace/git/**/*.{jpg,JPG}']

puts 'What would you like to call this batch of pictures'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.count} files: "

#now we introduce a counter, for this example starting at 1

pic_num = 1

pic_names.each do |name|
    print '.' #this is our progress indicator
    
    if pic_num <10
        new_name = "#{batch_name}-0#{pic_num}.jpg"
        if File.exist?(new_name)
            puts "A file with this name already exists, please enter a new name for this file\n"
            newer_name = new_name
            while newer_name == new_name
                puts "new file name please"
                newer_name = gets.chomp
            end
            new_name = newer_name + ".jpg"
        end
            
    else
        new_name = "#{batch_name}-#{pic_num}.jpg"
        if File.exist?(new_name)
            puts "A file with this name already exists, please enter a new name for this file\n"
            newer_name = new_name
            while newer_name == new_name
                puts "new file name please"
                newer_name = gets.chomp
            end
            new_name = newer_name + ".jpg"
        end
    end
    
    # due to the fact that pic names, and therefore name has a long path name and new name does not
    # the following operation will move the files from the original directory to the working directory (the directory we specified at 
    # the start of this code)
    
    File.rename(name, new_name)     # name here representing each individual file that we found in pic_names
    
    # now we increment our pic_num counter for the next file in the iteration
    
    pic_num += 1
end

puts # this is so we arnt on the same line as the progress bar which used print

puts 'done'
        