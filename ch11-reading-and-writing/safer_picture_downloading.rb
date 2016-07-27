Dir.chdir '~/Where/you/want/to/store/photos'

pic_files = '/where/photos/are e.g. /Volumes/external-drive'

puts 'What should we call the photos?'
batch_name = gets.chomp

puts
print "Downloading #{pic_files.length} files:   "

pic_number = 1

pic_files.each do |name|
  print '.'
  if pic_number < 10
    if File.exist?("#{batch_name}0#{pic_number}.jpg") = true
      return "Filename already exists - please try a different name for photos"
    else new_name = "#{batch_name}0#{pic_number}.jpg"
    end
  elsif File.exist?("#{batch_name}#{pic_number}.jpg") = true
    return "Filename already exists - please try a different name for photos"
  else new_name = "#{batch_name}#{pic_number}.jpg"
  end
  File.rename name, new_name
  pic_number += 1
end

puts
puts 'Done!'
