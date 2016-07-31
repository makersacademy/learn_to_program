Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
puts "Downloading #{pic_names.length} files:   "

pic_number = 1
errors = 0

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name) == true
    puts "#{new_name} already exists in the directory. File not copied."
    errors +=1
  else
    File.rename name, new_name
  end

  pic_number += 1

end

puts "Number of errors = #{errors}"
puts "Done, cutie"
