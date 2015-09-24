Dir.chdir("/Users/Alix/Desktop/Photos_Vrac")

pic_names = Dir["/Users/Alix/Desktop/Photos_Dec2014/*"]

puts "Choose a new batch name."

batch_name = gets.chomp

print "Downloading #{pic_names.length}"
pic_number = 1

pic_names.each do |name|

print(".")

if pic_number<10
  new_name = "#{batch_name}-0#{pic_number}.JPG"
else
  new_name = "#{batch_name}-#{pic_number}.JPG"
end

  File.rename name, new_name
  pic_number += 1
end
