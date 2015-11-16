# your code here
Dir.chdir '/Users/TY/Desktop/pics'
pic_names = Dir['/Users/TY/Desktop/pics/*.jpg'] #/ Dir['../*.jpg']

puts 'What would you like to call this batch?'
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
      puts 'This file already exists! Program shutting down..'
      exit

else
File.rename name, new_name
  end
pic_number = pic_number + 1

end

puts
puts 'Picture move complete!'
