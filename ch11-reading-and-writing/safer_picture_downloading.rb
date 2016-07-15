puts "Please enter the directory for the files you wish to download"
dir = gets.chomp

def change_dir dir

  if File.exist?(dir)
    Dir.chdir "#{dir}"
    puts Dir.pwd
  else
    puts "Invalid directory. Please try again."
    change_dir gets.chomp
  end
#need help with this
end

change_dir directory

pic_names = Dir["#{Dir.pwd}/**/*.{JPG,jpg"]

puts "Where would you like to download these pictures to?"

change_dir = gets.chomp

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today,

# though normally I like to count from 0.

pic_number = 1

pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts "Error #{new_name} already exists, please enter another name"
    new_name = gets.chomp
  end

  File.rename name, new_name

  pic_number += 1

end

puts # This is so we aren't on progress bar line.

puts 'Done, cutie!'
