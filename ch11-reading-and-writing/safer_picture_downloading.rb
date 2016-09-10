Dir.chdir '/users/michaelcalvey/Desktop/Music/'

pic_names = Dir['F:/**/*.jpg']
puts "What would you like to call this batch?"

batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
  print '.'

  if File.exists?("#{batch_name}#{pic_number}.jpg") == true
    puts "File already exists, skipping..."
    exit
  else
    new_name = if pic_number < 10
      "#{batch_name}#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end
puts
