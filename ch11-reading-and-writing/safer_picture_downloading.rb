# your code here

pic_names = Dir['/Users/AppsDJ/Documents/*.png']

Dir.chdir '/Users/AppsDJ/Pictures'

puts "What would you like to call this batch of photos?"
batch_name = gets.chomp

puts "Downloading #{pic_names.length} files: "

pic_number = 1 

pic_names.each do |pic_name|

  new_name = "batch_name#{pic_number}.png"

  if File.exist?(new_name)
      puts 'A file with this name already exists in this directory!'
      break
  else
    File.rename pic_name, new_name
    puts "Photo #{new_name} transfer complete."
    pic_number += 1
  end

end

