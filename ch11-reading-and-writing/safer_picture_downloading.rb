Picture-download/file-rename program
# Mac gives a 'cross-device link error' when using File.rename
# to move between Volumes. So assume all pics are moved from camera drive
# to a folder on the computer, 'camera', and then need to be renamed and moved
# to a pictures folder on the desktop.

folder_name = 'Desktop/pics/'

pic_names = Dir['camera/**/*.{JPG,jpg}']

puts 'what would you like to call this batch?'
batch_name = gets.chomp

puts
print 'Downloading '+ pic_names.length.to_s+' files: '

pic_number = 1

pic_names.each do |name|
print '.'

new_name = if pic_number < 10
folder_name.to_s + batch_name + '0' + pic_number.to_s + '.jpg'
else
folder_name.to_s + batch_name + pic_number.to_s + '.jpg'
end

if File.exist? new_name
puts
puts 'DANGER: file names already exist, exiting!'
puts
exit
else
File.rename name, new_name
end

pic_number = pic_number + 1
end

puts
puts 'Done'
