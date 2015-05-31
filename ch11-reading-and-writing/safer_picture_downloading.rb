#SAFER PICTURE DOWNLOADING

#This code will not pass. Need to seek help on the method I am passing.



#I have attempted to write a method that if the intended name of a file is the same as an exisiting one, to ask user to confirm whether they want to
# overwrite file.  But the method fails.

def warning new_name
    if File.exists? new_name
        puts "Are you sure you want to overwrite the file. Y or N?"
        answer = (gets.chomp).downcase
        if answer == y
            exit
        end
    end
end


Dir.chdir '/Users/elinnet/Test_Photos'

pic_names = Dir['*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
    
    print '.' #This is our 'progress bar'
    
    new_name = if pic_number < 10
    name1 = "#{batch_name}0#{pic_number}.jpg"
    puts name1
    else
    name2 = "#{batch_name}#{pic_number}.jpg"
    puts name2
end

warning new_name

File.rename name, new_name

pic_number = pic_number + 1

end