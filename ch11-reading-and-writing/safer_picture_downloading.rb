Dir.chdir '/Users/philipclarke/Desktop/moveto'

pic_name = Dir['/Users/philipclarke/Desktop/movefrom/*.jpg']
puts 'what shall we call this batch?'
batch_name = gets.chomp
puts
print "downloading #{pic_name.length} files"
pic_number = 1
pic_name.each do |name|
	print '.'

	new_name = if pic_number < 10
	"#{batch_name}0#{pic_number}.jpg"
	else
	 "#{batch_name}#{pic_number}.jpg"
	end


if File.exist? new_name
	puts "oops - this file already exists - we have exited this move so you do not overwrite a file!!!!!
	"
	exit
else
	File.rename name, new_name

end
pic_number = pic_number + 1	


end
puts
puts "done!"