# for safety I use just one particular dir
# new fotos are in Test/foto-test,
# the program and the renamed fotos are in Test/fotos
pic_names = Dir['../foto-test/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
# when a file exist already we just quit
  if File.exist? new_name
    puts
    puts "There is already a file with that name!"
    puts "For you own safety I'm quitting now!"
    exit
  end
  File.rename name, new_name
#  Finally, we increment the counter.
  pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done'
