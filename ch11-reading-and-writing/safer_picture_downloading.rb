# Adapt the picture-downloading/file-renaming program to your computer by adding some
# safety features to make sure you never overwrite a file. A few methods you might find
# useful are File.exist? (pass it a filename, and it will return true or false) and exit
# (like if return and Napoleon had a baby—it kills your program right where it stands;
# this is good for spitting out an error message and then quitting).

# Where pictures are stored - changes to this directory
Dir.chdir '/Users/mattward/Desktop/pictures/new'

# Find all the pictures to be moved
pic_names = Dir['/Users/mattward/Desktop/pictures/*.jpg']

puts "What would you like me to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files. "

# Counter
pic_number = 1

pic_names.each do |name|

    new_name = if pic_number < 10
      "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end

  # Checks if file with this name already exists and closes with an error if true
    if File.exist? new_name
        puts "ERROR: FILE WITH THIS NAME EXISTS"
        exit
      else
      print "." # Progress bar
      # Rename the file and increment the counter
      File.rename name, new_name
      pic_number = pic_number + 1
    end
end

puts
puts "Done."
# your code here
