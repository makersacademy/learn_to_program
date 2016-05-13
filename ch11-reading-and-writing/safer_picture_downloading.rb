Dir.chdir (Dir.home + "/Pictures")

dir_arr = (Dir.home + "/Desktop/demo-sd-card/*.png")
pic_names = Dir[dir_arr]
puts 'What would you like to call this batch?'
batch_name = gets.chomp

# Check for files with batch_name at the beginning (wildcard)
if !Dir.glob(batch_name + '*.*').empty? 
	puts "A batch with that filename already exists!"
	exit
end

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' # progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end


  File.rename name, new_name
  pic_number = pic_number + 1
end

puts 
puts 'Transfer complete!'
