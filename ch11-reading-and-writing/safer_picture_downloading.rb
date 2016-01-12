Dir.chdir '~/Pictures'

pic_names = Dir['Wherever SDCARD counts'] # /**/*.extn would recursively select all with that extension

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:   "

# Counter...
pic_number = 1

pic_names.each do |name|
  print '.' # making a progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exit? new_name
    puts "File #{new_name} already exists."
    exit
  end

  File.rename name, new_name

  pic_number = pic_number + 1
end

puts # break the progress bar line.
puts "And we're done!"
