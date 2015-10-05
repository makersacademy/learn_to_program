#This code doesn't run properly on my nitrous. I get an error from the first line: No such file or directory @ dir_chdir - ~/Projects/Safer_Picture_Downloading/Folder_to_move_to (Errno::
ENOENT)
#However, I'm sure that directory path is correct. I'm relatively confident the code is right too but obviously not sure as I can't run it!


Dir.chdir '~/Projects/Safer_Picture_Downloading/Folder_to_move_to'
file_names = Dir['~/Projects/Safer_Picture_Downloading/Files_to_move/*']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts "Downloading #{file_names.length} files: "

file_number = 1
file_names.each do |name|
  print '.'

  new_name = if file_number < 10
  "#{batch_name}0#{file_number}.jpg"
   else
  "#{batch_name}#{file_number}.jpg"
   end
if File.exist? new_name
    exit
  end
File.rename name, new_name
file_number =+ 1
end