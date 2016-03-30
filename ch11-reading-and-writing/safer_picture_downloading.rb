def generate_new_filename batch_name, pic_number
  pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"
end

Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
# First we find all of the pictures to be moved.
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp

Dir 'C:/Documents and Settings/Katy/PictureInbox'.
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = generate_new_filename batch_name, pic_number

while File.exists?(new_name)
  pic_number += 1
  new_name = generate_new_filename batch_name,pic_number
end

File.rename name, new_name

pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'