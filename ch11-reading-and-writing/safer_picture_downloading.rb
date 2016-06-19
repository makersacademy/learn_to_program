pic_names = Dir['./*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1
pic_names.each do |name|
print '.'
new_name = if pic_number < 10
    if File.exist?("#{batch_name}0#{pic_number}.jpg")
      puts "#{name} there is already a file with that name, please rename"
      exit
    else
      "#{batch_name}0#{pic_number}.jpg"
    end
  else
    if File.exist?("#{batch_name}#{pic_number}.jpg")
        puts "#{name} there is already a file with that name, please rename"
        exit
    else
      "#{batch_name}#{pic_number}.jpg"
    end
  end

  File.rename name, new_name
  pic_number = pic_number + 1
end
