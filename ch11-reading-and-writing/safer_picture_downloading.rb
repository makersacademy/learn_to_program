Dir.chdir "/Users/junyuanxue/Pictures/DianaMini"

pic_names = Dir["/Users/junyuanxue/Pictures/DianaMini1stRoll"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading files: "

pic_number = 1
pic_names.each do |name|
  print "."
  new_name = "#{batch_name}_#{pic_number}.jpg"
  File.rename name, new_name
  pic_number += 1
end

puts
puts "Files downloaded to #{pic_names}."
