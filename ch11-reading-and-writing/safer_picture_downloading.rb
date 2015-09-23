# LEARNING TO PROGRAM WITH CHRIS PINE, 11.8 ex 1
################################################
# Safer picture downloading. Adapt the picture-downloading/file-renaming
# program to your computer by adding some safety features to make sure
# you never overwrite a file. A few methods you might find useful are
# File.exist? (pass it a filename, and it will return true or false) and exit
# (like if return and Napoleon had a baby—it kills your program right where it 
# stands; this is good for spitting out an error message and then quitting).

Dir.chdir "#{ENV['HOME']}/PictureInbox"
pic_names = Dir[ENV['HOME'] + '/camera/*.jpg']


puts 'What would you like to call this batch?'
batch_name = gets.chomp

print "Downloading #{pic_names.length} files:  "

pic_names.each_with_index do |name, i|
  print '.'
  new_name = "#{batch_name}#{"%02d" % (i + 1)}"
  File.exist?("#{new_name}.jpg") ? File.rename(name, "#{new_name}-dup.jpg") : File.rename(name, "#{new_name}.jpg")
end

puts
puts 'Done!'