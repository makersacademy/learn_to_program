
Dir.chdir '/Users/anthonyepstein/Desktop/SCARY2'

pic_names = Dir['/Users/anthonyepstein/Desktop/SCARY/**/*.jpg']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "


pic_number = 1

pic_names.each do |name|

print '.' # This is our "progress bar".

new_name = if pic_number < 10

"#{batch_name}0#{pic_number}.jpg"

else

"#{batch_name}#{pic_number}.jpg"

end

if File.exist? new_name
	puts 'ERROR, FILE ALREADY EXISTS! PLEASE CHANGE FILENAME'
else
	File.rename name, new_name
end

pic_number = pic_number + 1

end

puts # This is so we aren't on progress bar line.

puts 'Done, cutie!'

