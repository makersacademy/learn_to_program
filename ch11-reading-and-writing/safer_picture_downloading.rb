STDOUT.sync = true #immediately see the results on screen rather that internally
thread.abort_on_exception = true #stops the script running if there is an issue

Dir.chdir '/Users/Fbell/Projects/week_2/learn_to_program/ch11-reading-and-writing'

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call these pictures?'
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

  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done, kapow!'
