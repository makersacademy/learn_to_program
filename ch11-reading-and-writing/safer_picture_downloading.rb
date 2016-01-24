

Dir.chdir '~/Users/Adzz/Pictures'
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts

same_name  = Dir.glob(batch_name*)
while same_name.length > 0
	puts "There is already a bath with that name!"
	batch_name = gets.chomp
end
puts
print "Downloading #{pic_names.length} files:  "
# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10 "#{batch_name}0#{pic_number}.jpg"
  else
  "#{batch_name}#{pic_number}.jpg"
  end

  
 
  File.rename name, new_name
  #  Finally, we increment the counter.
  pic_number = pic_number + 1
end

