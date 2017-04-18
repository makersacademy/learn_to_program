project_dir = "/Projects/learn_to_program/ch11-reading-and-writing"

Dir.chdir("/Users/joestephens/Projects/learn_to_program/ch11-reading-and-writing/images")

pic_names = Dir["/Users/joestephens/Projects/learn_to_program/ch11-reading-and-writing/old_images_folder/*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"

  if !File.exist?(new_name)
    File.rename(name, new_name)
  else
    puts "Filename already exists. Exiting."
    exit
  end

  pic_number += 1
end

puts
puts "Done, cutie!"
