Dir.chdir '/Users/rachaelmahon/desktop/MA Pre-Course/MA W2/Rough_work'

pic_names = Dir['F:/**/*.jpg']

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  while File.exists?(new_name)
    pic_number += 1
  end

  File.rename name, new_name

  pic_number = pic_number + 1
  puts 'Done!'
