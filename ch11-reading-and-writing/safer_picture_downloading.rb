pic_names = Dir["../*.{JPG,jpg}"] # Search in the parent directory

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist? new_name
    overwrite = gets.chomp "A file already exists with the name " + new_name + ". Do you want to overwrite? Type \"Yes\" or \"No\"."
    if overwrite.downcase == "yes"
      File.rename name, new_name
      pic_number += 1
    elsif overwrite.downcase == "no"
      puts "Skipping " + new_name + " because it already exists."
    end
  end
end

puts
puts "Done, cutie!"

# TO DO
# Add safety features to sure you never overwrite a file
# File.exist? (pass it a filename and it will return true or false)
# exit - kills your program right where it stands - good for spitting out an error message and then quitting
# ßSolve this in English first Frances!
