Dir.chdir 'C:\Users\tim3t\Pictures\Saved Pictures'

pic_names = Dir['*.JPG']
puts 'Please name these files:'
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
  if File.exists? new_name
    puts "Error, file already exists"
    exit
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end


  puts # This is so we aren't on progress bar line.
  puts 'Done'