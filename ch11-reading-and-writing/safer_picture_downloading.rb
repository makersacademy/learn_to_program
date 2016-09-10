Dir.chdir '/Users/elizabethwicks/Pictures/photos' 

pic_names = Dir['/Users/elizabethwicks/Pictures/*.jpg']

if pic_names.length == 0
    puts "No files found."
    exit
end

puts 'new name?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
print "."

    if File.exist?("#{batch_name}#{pic_number}.jpg") == true
    print
    puts "File already exists, do you want to overwrite? Yes or No"
    a = gets.chomp

        if  a == "Yes"
         end

        if a == "No"
            puts "Error" 
            exit
        end
end
new_name = 
             if pic_number < 10
             "#{batch_name}0#{pic_number}.jpg"
             else
            "#{batch_name}#{pic_number}.jpg"
end

File.rename name, new_name
pic_number = pic_number + 1
end


puts
puts "Done!" 
