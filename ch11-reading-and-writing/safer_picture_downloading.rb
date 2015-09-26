Dir.chdir '/Users/lucetzer/Pictures'

pic_names = Dir['Users/lucetzer/downloads/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_num = 1
pic_names.each do |name|
  print '.'

  new_name = if pic_num < 10
    "batch_name0#{pic_num}.jpg"
  else
    "batch_name#{pic_num}.jpg"
  end

  if File.exist?(new_name) = true
    puts "File already exist."
    break
  end

  File.rename name, new_name
  pic_num += 1
end

puts
puts 'Completed!'