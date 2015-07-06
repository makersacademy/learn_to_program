Dir.chdir '/Users/Adrian/Pictures/After'

pic_names = Dir['/Users/Adrian/Pictures/Before/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
duplicate = false

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist? new_name
    new_name = 'new_' + new_name
    duplicate = true
  end
  File.rename name, new_name
  pic_number += 1
end

puts
puts 'Duplicated name(s) detected in the process!' if duplicate
puts 'Done!'
