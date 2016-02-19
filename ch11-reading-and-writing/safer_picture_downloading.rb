# Pine suggests adapting the program
#   - to our computer
#   - with added safety features, inlcuding...
#     > ensuring we don't overwrite a file (File.exist?)
#     > using 'exit' to quit in the event of an error


  Dir.chdir '~/Pictures/moved_test_pics'

  pic_names = Dir['~/Pictures/test_pics'] # First we find all of the pictures to be moved.

  puts 'What would you like to call this batch?'
  batch_name = gets.chomp
  puts "That file already exists." if batch_name.exist == true

  puts
  print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today, though normally I like to count from 0.
  pic_number = 1

  pic_names.each do |name|
      print '.' # This is our "progress bar".

      new_name = if pic_number < 10
          "#{batch_name}0#{pic_number}.jpg"
        else
          "#{batch_name}#{pic_number}.jpg"
        end

    File.rename name, new_name
# Finally, we increment the counter.
  pic_number = pic_number + 1
  end

puts # This is so we aren't on progress bar line.
puts 'Done!'
