Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

print "\nDownloading #{pic_names.length} files: "
pic_number = 1

pic_names.each.with_index do |name,index|
    
    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end

    if File.exist? new_name
        puts "\n\n **WARNING** #{new_name} exists already. what should I do? 'o' to overwrite, 'c' to ignore and continue, 'q' to stop and quit"
        case gets.chomp
            when 'o' then puts "overwriting.."
            when 'c' then puts "ignoring file" ; next
            when 'q' then puts "quitting process" ; exit(1)
        else
           puts "wrong command, aborting" 
           exit(2)
        end       
    end
    
    File.rename name, new_name
    print '.'
    if (index+1) % 10 == 0
        puts "#{(index+1)/10} files done"
    end
    pic_number = pic_number + 1
end

puts 'Done, cutie!'