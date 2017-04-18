Dir.chdir '/Users/Andrea/temp_test_copies'

pic_names = Dir['/Users/Andrea/temp_pics/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

loop do
  if Dir["*.jpg"].any? {|filename| filename =~ /#{batch_name}/ }
    puts 'Existing batch name, please enter alternative name'    
    batch_name = gets.chomp
  else
    break
  end  
end

puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10 
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg" 
  end

  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
