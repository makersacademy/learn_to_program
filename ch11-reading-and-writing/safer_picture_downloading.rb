Dir.chdir 'Projects/learn_to_program/ch11-reading-and-writing/New_Name_Pictures'

pic_names = Dir['../Original_Pictures/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  while File.exist? (new_name)
    amended = new_name.split(".")
    new_name = amended[0] + 'a.' + amended[1]
  end
  File.rename(name, new_name)
  pic_number += 1
end
puts
puts "Finished."
