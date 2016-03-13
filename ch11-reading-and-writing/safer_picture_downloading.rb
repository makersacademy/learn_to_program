# your code here
Dir.chdir('/Users/garethmckenna/projects/learn_to_program/ch11-reading-and-writing/images/') #change working directory

#find all pics to be moved
pic_names = Dir['**/*.{JPG,jpg}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files"
#set counter
pic_number = 0
pic_names.each do |name|
  print "." #progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
while File.exist? (new_name)
  puts "#{new_name exists already}"
  exit
end

  File.rename name, new_name
  #increment the counter
  pic_number += 1
end
puts #so not to print on the progress line
puts "Images Downloaded"
