@origin = "/Users/alistairwye/projects/photo_origin"
@destination = "/Users/alistairwye/projects/photo_destination"
@notcopied = []
@f = 0

Dir.chdir @destination

pic_names = Dir["#{@origin}/**/*.{jpeg,JPEG,jpg,JPG}"]
# Finds all .JPG and .jpg files in the above directory and creates an array of
# the filenames of each photo currently in the ../photo_origin.
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will output "Downloading 10 files:" if the number of files currently in
# the /photo_origin directory is equal to 10.
pic_number = 1
# This is the number that will identify each new filename, e.g. the first JPEG
# will be renamed "drone_photo_01.jpg" using the below lines of code, provided the
# user called the batch_name "drone_photo" obviously!
pic_names.each_with_index do |name, i|
# For each item in the pic_names array execute the following code:
  print '.' # This is our "progress bar".
# Printa a "." to the screen (indicating that a file has been processed).
  new_name = if pic_number < 10
# This if statement simply helps ensure the first 9 files take the format "01",
# "02" etc, etc.
              "#{batch_name}_0#{pic_number}.jpg"
           else
              "#{batch_name}_#{pic_number}.jpg"
           end

 if File.exist? new_name
   @notcopied << pic_names[i]
   @f += 1
else
  File.rename name, new_name
end
# This is saying rename each file and takes two arguments.  The first is the
# name of the original file plus its full file path ('name') and the second
# is the current value of the 'new_name' variable.  Since 'name' has the
# original files full file path attached to it, and 'new_name' does not, it also
# moves the file to the current working directory, which is now 'destination'
# in our code.  Since it's a MOVE, this effectively downloads and deletes the
# originals from the 'origin' directory.
#
pic_number = pic_number + 1
# Increments the pic_num counter by +1 each iteration.  Without this the above
# code would keep overwriting the file in photo_destination directory
end
puts
if @notcopied.length == 1
  puts
  puts "#{@f} file failed to transfer."
  puts
  puts "The file at the following location did NOT transfer:"
  puts
  puts "#{@notcopied.join}"
  puts
  puts "This was to avoid overwriting a file in the above directory with an identical filename to:"
  puts
  puts "#{@notcopied[0]}"

elsif @notcopied.length > 1
  puts
  puts "#{@f} files failed to transfer."
  puts
  puts "The files at the following locations did NOT transfer:"
  puts
        @notcopied.each{|e| puts e}
  puts
  puts "This was to avoid overwriting files with identical names in the destination directory."
end
puts # This is so we aren't on progress bar line.
puts 'Done, Alistair!'
puts
