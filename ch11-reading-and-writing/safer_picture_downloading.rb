Dir.chdir '/Users/acsauk/Documents/Photos'

pic_names = Dir['/Users/acsauk/Downloads/test/*.{JPG,jpg,JPEG,jpeg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

#Counter

pic_number = 1

pic_names.each do |name|
  print '.' # This is our 'progress bar'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  exist = File.exist?(new_name)

  if exist == true
    puts "File #{new_name} already exists - exiting program"
    exit
    break
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end

puts
puts 'All, done!'
