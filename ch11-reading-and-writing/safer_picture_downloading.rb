
Dir.chdir '/Users/chriswynne/projects/learn_to_program/ch11-reading-and-writing/PictureInbox/'

pic_names = Dir['/Users/chriswynne/projects/learn_to_program/ch11-reading-and-writing/PictureOutbox/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

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

  if File.exist?(new_name)
    puts "File already exist!\nTry using a different batch name."
    exit
  end

  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done!'
