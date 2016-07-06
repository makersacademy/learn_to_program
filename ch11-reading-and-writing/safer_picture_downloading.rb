Dir.chdir '/Users/jessicajones/Desktop/PhotoDir'

pic_names = Dir['/Users/jessicajones/Dropbox/makersphotos/*.jpg']
puts pic_names
puts "What would you like to call this batch?"
batch_name = gets.chomp

pic_number = 1

pic_names.each do |name|
  print '.'
new_name = if pic_number < 10
  "#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end

if File.exist? new_name
    puts "Exiting: You are in danger of overwriting existing photos! BYE!!"
    exit
else
    File.rename name, new_name
    pic_number = pic_number +1
end
end
print "Downloading #{pic_names.length} photos: "
puts
puts "That's all done!"
