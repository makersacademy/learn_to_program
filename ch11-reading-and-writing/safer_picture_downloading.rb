

pic_names = Dir["Photos/*.JPG"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files"

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end
  
  # Check if file name already exists in the new directory
  if File.exist?(new_name)
    # If so, give error and break from the loop
    puts "\n Error: File already exists!"
    break
  else
  
    File.rename(name, new_name)
    pic_number = pic_number + 1
  end
end

puts
puts "Done"