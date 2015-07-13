def overwriting file_name

  if File.exist? file_name
    puts "A file called #{file_name} already exists. Do you want to cancel, overwrite, or rename?"
      answer = gets.chomp.downcase
      until answer == "cancel" || answer == "overwrite" || answer == "rename"
        puts "Hey, you need to choose cancel, overwrite or rename!"
        answer = gets.chomp.downcase
      end
      if answer == "cancel"
        puts "You'll need to delete the offending file or something to copy all these files"
        exit
      elsif answer == "rename"
        puts "Gimme the new name:"
        file = "#{gets.chomp}.jpg"
        overwriting file
      end
  end
end


Dir.chdir "/Users/Sarah/Pictures/imported_pictures"

pic_names = Dir["/Users/Sarah/Downloads/*.JPG"]
puts "Here are your files: #{pic_names}"

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:"

pic_number = 1

pic_names.each do |name|
  puts "."

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  overwriting new_name

  File.rename name, new_name

  pic_number += 1
end
puts
puts "Done!"