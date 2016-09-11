Dir.chdir "/Users/jamesgardiner/Documents/Pics"

pic_names = Dir["/Users/jamesgardiner/Pictures/*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Download #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts
    puts "Error, duplicate file name"
    exit
  else
    File.rename name, new_name
  end

  pic_number = pic_number + 1
end

puts
puts "Done"
