# go to dir where pics are saved
Dir.chdir '/Users/loliphant/Documents/Programming/Ruby/learn_to_program/ch11-reading-and-writing/imgs'

# find all pictures to be moved
pic_names = Dir['../*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# This will be our counter, We'll start at 1
pic_number = 1

pic_names.each do |name|
  print '.' # this is our progrss bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  unless File.exist? new_name
    File.rename name, new_name
  else
    puts "Error: copying over existing files! Alternative name required"
    exit
  end

  # finally we increment the counter
  pic_number = pic_number + 1 # pic_number += 1

end

puts 'All done!'
