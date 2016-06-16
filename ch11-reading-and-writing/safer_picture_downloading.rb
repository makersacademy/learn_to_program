Dir.chdir '/Users/prashantmathias/desktop/NamedPics'

pic_names = Dir['/Users/prashantmathias/desktop/ImportedPics/*.jpg']

puts 'Enter batch name'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_num = 1

pic_names.each do |name|
    print '.'
   new_name = if pic_num < 10
    "#{batch_name}_0#{pic_num}.jpg"
   else
     "#{batch_name}_#{pic_num.jpg}"
   end
  if File.exist?(new_name)
     puts 'file already exists in this directory.'
     puts 'Do you want to overwrite the file? y/n'
     reply = gets.chomp
     if reply == y
       File.rename name, new_name
       pic_num += 1
     else
       puts 'Stopping file copy!'
       exit
     end
   else
     File.rename name, new_name
     pic_num += 1
   end
 end

 puts
 puts "Done!" #With a little help from my buddy Luke Cartledge :)
