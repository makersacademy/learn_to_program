Dir.chdir '/home/nitrous/pictures/inbox'

pic_names = Dir['/home/nitrous/pictures/camera/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts

error_flag = false
new_names = []
pic_number = 1
pic_names.each do |name|
  new_names << (pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg")
  error_flag = error_flag || File.exist?(new_names[-1])
  pic_number += 1
end

if error_flag then
  puts "ERROR: files of that name already exist; process terminated."
else
  print "Filenames checked, now downloading #{pic_names.length} files: "
  pic_number = 1
  pic_names.each do |name|
    print '.' # This is our "progress bar".
    File.rename name, new_names[pic_number - 1]
    pic_number += 1
  end
  puts
  puts 'Pictures moved and renamed.'
end

