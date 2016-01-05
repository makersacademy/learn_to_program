#add safety features so never overwrite a file, use File.exist? and exist

Dir.chdir ['ScottGledhill/Desktop']
pic_names = Dir['ScottGledhill/Pictures']

File.exist? pic_names
  if true exit
  else
    puts "what would you like to call this bitch"
    bitch_name = gets.chomp
    puts
    print "downloading #{pic_names.length} files: "
#this is our counter
pic_number = 1

pic_names.each do |name|
  print '.' # progress bar
  new_name = if pic_number < 10
    "#{bitch_name}0#{pic_number}.jpg"
  else
    "#{bitch_name}#{pic_number}.jpg"
  end

  File.rename (name, new_name)
  pic_number = pic_number + 1
end
