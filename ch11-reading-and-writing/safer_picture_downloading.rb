Dir.chdir 'C:\Users\Jason\Pictures'

pic_names = Dir['C:\Users\Jason\Pictures\move_me\*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
    print '.'
    new_name = if pic_number < 10
        "#{batch_name}-0#{pic_number}.jpg"
    else
        "#{batch_name}-#{pic_number}.jpg"
    end
    
if File.exist?(new_name) == false
    File.rename(name, new_name)
    pic_number += 1
else
    puts "File name already exist"
    return 0
end
end

puts # This is so we aren't on progress bar line.
puts 'Done! Your files have been renamed.'