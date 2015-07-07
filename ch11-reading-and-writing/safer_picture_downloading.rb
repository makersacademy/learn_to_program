Dir.chdir '/Users/rebeccaappleyard1984/Desktop/Makers/PreCourse/Week_3/learn_to_program'

pic_names = Dir['/Users/rebeccaappleyard1984/Desktop/Pics/*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
  print "."

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exists?(new_name)
    puts
    puts "That file already exists."
    puts "Process aborted."
    exit
  else
  File.rename name, new_name
  end

  pic_number += 1
end

puts
puts "All done!"