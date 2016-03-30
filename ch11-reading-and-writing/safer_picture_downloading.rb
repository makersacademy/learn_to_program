Dir.chdir '/Users/amynicholson/desktop/Moved_Pics'

pic_names = Dir['/Users/amynicholson/desktop/Pictures/*.{JPG, jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."

  new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"

  if File.exist?(new_name)
    puts "Conflict - file already exists."
    exit
  else
    File.rename name, new_name
  end

  pic_number += 1
end

puts
puts "Done!"
