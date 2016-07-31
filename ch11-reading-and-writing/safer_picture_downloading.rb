Dir.chdir '/Users/summerbrines/Pictures'

# First we find all of the pictures to be moved.

pic_names = Dir['/Users/summerbrines/downloads/**/*.{JPG,jpg}'] #my pics that i'm using are in downloads
puts 'What would you like to call this batch?'
batch_name = gets.chomp
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

  while File.exist?(new_name)
         puts "Error #{new_name} already exists, please enter a name to save #{name} as."
         new_name = gets.chomp + ".jpg"
     end

  File.rename name, new_name

  pic_number = pic_number + 1

end
