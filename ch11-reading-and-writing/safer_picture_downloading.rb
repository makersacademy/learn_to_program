Dir.chdir '/Users/crispinandrews/Pictures/NewPics'

pic_names = Dir['/Users/crispinandrews/Pictures/*.{jpg,JPG}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
puts

pic_number = 1

pic_names.each do |name|
  print '.'

new_name = if pic_number < 10
  "#{batch_name}0#{pic_number}.jpg"
else
  "#{batch_name}#{pic_number}.jpg"
end

if File.exist? new_name
  new_name1 = if pic_number < 10
    "#{batch_name}0#{pic_number}_a.jpg"
  else
    "#{batch_name}#{pic_number}_a.jpg"
  end
  puts "#{new_name} exists, saved as #{new_name1}."
  File.rename new_name, new_name1
end

File.rename name, new_name
pic_number = pic_number + 1
end
