Dir.chdir '../pictures'
pic_names = Dir["../pictures_downloaded/*.jpg"]

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
    print '.'
    
    new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"
    
    save_name = new_name + (pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg")
    
    while FileTest.exist? save_name
        new_name += 'a'
        save_name = new_name + (pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg")
    end
    File.rename name, new_name
    pic_number = pic_number + 1
end

