 +#Added features: 'abort' on line 21
 +
 +Dir.chdir '/home/ubuntu/Projects/learn_to_program/ch11-reading-and-writing/dltst_write'
 +
 +pic_names = Dir['/home/ubuntu/Projects/learn_to_program/ch11-reading-and-writing/dltst_read']
 +
 +puts 'What would you like to call this batch?'
 +
 +batch_name = gets.chomp
 +
 +puts
 +
 +print "Downloading #{pic_names.length} files: "
 +
 +pic_number = 1
 +
 +pic_names.each do |name|
 +
 +print '.'
 +
 +abort("File name already in use- aborting.") if File.exist? 'bouncer'
 +
 +
 +new_name = if pic_number < 10
 +"#{batch_name}0#{pic_number}.jpg"
 +else
 +"#{batch_name}#{pic_number}.jpg"
 +end
 +
 +
 +File.rename name, new_name
 +
 +pic_number = pic_number + 1
 +
 +end