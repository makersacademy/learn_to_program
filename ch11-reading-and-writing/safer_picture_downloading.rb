Dir.chdir('/Users/michaelarnott/Desktop')
pic_names = Dir['/Users/michaelarnott/Desktop/Test_Folder/*.jpg']
puts pic_names.to_s
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'

  if (pic_number < 10) & (File.file?("#{batch_name}0#{pic_number}.jpg") != true)
    new_name = "#{batch_name}0#{pic_number}.jpg"
  elsif (File.file?("#{batch_name}0#{pic_number}.jpg") != true)
    new_name = "#{batch_name}#{pic_number}.jpg"
  else
    puts
    puts "Stopping import due to file name match."
    exit
  end

  File.rename name, new_name

  pic_number = pic_number + 1
end

puts
puts 'Operation Complete'
