Dir.chdir '/Users/Joe/Pictures/E-mail attachments'

pic_names = Dir['*.jpg']

puts 'What would you like to call this photo album?'
album_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:"

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{album_name} 0#{pic_number}.jpg"
  else
    "#{album_name} #{pic_number}.jpg"
  end

  if File.exist? new_name
    puts "#{new_name} already exists, I can't call it that!"
    new_name = "#{new_name}i"
    puts "Instead I've called it #{new_name}! :-)"
  end

  File.rename(name, new_name)
  pic_number = pic_number + 1
end

puts
