Dir.chdir

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_num = 1

pic_names.each do |name|
  print "."
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{batch_name}.jpg"
  end

  if File.exist? (new_name)
    puts "This batch or file already exists. Please start again and chose another name"
 exit
else
  File.rename name, new_name

  pic_num = pic_num + 1
end
end

puts
puts 'All done!'
