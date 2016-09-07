Dir.chdir '/Users/felixharrison/Pictures/SummerPics'

pic_names = Dir['/Users/felixharrison/Desktop/CanonD50/*.jpg'] #in an array format

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.' #this is the progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name == true
    puts "This file already exsits in this folder"
    exit
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end

puts
puts 'Done!'
