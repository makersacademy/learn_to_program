#This program moves and renames photos. MUST be JPG
#Destination directory
Dir.chdir'/Users/lewis/documents/renamedphotos'
#Source Directory
pic_names =  Dir['/Users/lewis/documents/photostorename/*.{jpg,JPG}']

puts 'what would yo like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
#file counter starting at one instead of 0 for filenames
pic_number = 1

pic_names.each do |name|
  print '.' #makes progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else 
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exists?(new_name)
    puts "\na file named #{new_name} already exists. Aborting rename"
    exit
  else
    File.rename name, new_name
    pic_number += 1
  end
end# your code here
