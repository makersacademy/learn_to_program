Dir.chdir '/Users/michael/Dropbox/makers/pre_week2/learn_to_program/ch11-reading-and-writing/textfiles_copy_to'

file_names = Dir['/Users/michael/Dropbox/makers/pre_week2/learn_to_program/ch11-reading-and-writing/textfiles/*.txt']

puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "Downloading #{file_names.length} files: "

file_number = 1
file_names.each do |name|
  print '.'
  if File.exist?("#{batch_name}0#{file_number}.txt")
    puts "\n"
    puts "ERROR, #{batch_name}0#{file_number}.txt already exists."
    puts "This programme won't overwrite existing files for safety reasons"
    puts "Please rename batch or rename existing file and try again."
    puts "EXITING PROGRAMME"
    exit
  end
  new_name = if file_number <10
    "#{batch_name}0#{file_number}.txt"
  else
    "#{batch_name}#{file_number}.txt"
  end
  File.rename name, new_name
  textfile = File.open("#{batch_name}0#{file_number}.txt", 'a')
  textfile.puts "I am #{batch_name}0#{file_number}.txt!"
  textfile.close
  file_number += 1
end

puts # This is so we aren't on progress bar line.
puts 'Done.'
