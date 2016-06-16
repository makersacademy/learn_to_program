require '/Users/thadycondon/Documents/learn_to_program/ch10-nothing-new/shuffle.rb'

Dir.chdir '/Users/thadycondon/Desktop/Chap11'

tune_names = Dir['*.{m3u,mp3,m4a}']
tunes = shuffle tune_names
#puts tunes
#exit
puts 'What would you like to call this playlist?'
batch_name = gets.chomp

puts

print "Downloading #{tune_names.length} files: "
tune_number = 1

if File.exist?("#{batch_name}0#{tune_number}.m3u") == true
  puts 'File already exists, abandon ship!'
  exit
end

tune_names.each do |name| print '.'
  new_name = if tune_number < 10
    "#{batch_name}0#{tune_number}.m3u"
  else
    "#{batch_name}#{tune_number}.m3u"
  end
  
  File.rename name, new_name
  tune_number = tune_number + 1
  
end



puts
puts 'Done'