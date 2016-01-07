Dir chdir '/Users/emmabaddeley/Pictures'

pic_names = Dir[/F/Users/**/*.jpg]

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".

  if File.exist? (name)
    puts
    puts "There is already a picture named #{name}, the downloader will now exit"
    exit
  else
    new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
    else
    "#{batch_name}#{pic_number}.jpg"
    end
  end

  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts "Done!"
