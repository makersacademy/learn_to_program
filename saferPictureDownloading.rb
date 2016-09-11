Dir.chdir 'C:\Users\Tom\Pictures\newfile'
pic_names = Dir['C:/Users/Tom/Pictures/bollos/*.jpg']

puts "What would you like this batch to be called?"
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

  if File.exist? new_name
    puts "It seems that another file has the very same name! Bye bye!"
    exit
  else
    File.rename name, new_name

    pic_number += 1
  end
end