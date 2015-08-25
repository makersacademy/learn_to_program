Dir.chdir '/home/nitrous/pictures/inbox'

pic_names = Dir['/home/nitrous/pictures/camera/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts

puts "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"
  if File.exist?(new_name) then
    puts "ERROR: #{new_name} already exists, process terminated."
	exit
  else
    File.rename name, new_name
  end
  pic_number += 1
end

puts
puts 'Done'
