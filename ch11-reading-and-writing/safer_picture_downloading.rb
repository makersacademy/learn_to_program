# Dir.chdir('where you want files to end up')

pic_names = Dir.[]('*.jpg')

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each { |name|
  print '.'
  
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  
  if File.exist?(new_name)
    puts 'Batch name already exists. Please try again'
    exit(0)
  else 
    File.rename(name, new_name)
  end
  
  pic_number = pic_number +1 
}
    