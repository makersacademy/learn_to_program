Dir.chdir '/home/william/Pictures/100NIKON'

pic_names = Dir['../*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.' # This is our "progress bar".

  pic_number < 10 ? new_name = "#{batch_name}0#{pic_number}.jpg" : new_name = "#{batch_name}#{pic_number}.jpg"

  if File.exist? new_name
    puts "File #{new_name} already exist, try a different name!"
    exit
  end

  File.rename name, new_name
  pic_number += 1
end

puts
puts 'Done, cutie!'
