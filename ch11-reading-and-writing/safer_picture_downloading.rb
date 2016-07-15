# your code here
#I used *.txt files instead of pictures but same principle different file type
# move to the correct folder within the OS using Dir.chdir change directory
# I will use ./test_directory as copy to directory
# I will use ./test_directory/files as copy from directory
Dir.chdir './test_directory'
puts "In dircectory for renaming process"
#Get a list of files for batch copying
text_names = Dir['./files/*.txt']
#puts text_names
#now have a list of text files that can traversed since it is an array
puts 'what would you like to call this batch'
batch_name = gets.chomp #get name for batch for renaming store in variable
puts 
print "Downloading #{text_names.length} file(s): " #justa outputs the lengh of the string text_names
text_counter = 1
text_names.each do |name|
  print '.'   #one dot per iteration or file so 10 files 10 dots
  if text_counter < 10
      new_name = "#{batch_name}0#{text_counter}"
      while FileTest.exist? new_name
        new_name += 'a'
      end
      
  else
      new_name ="#{batch_name}#{text_counter}"
       while FileTest.exist? new_name
        new_name += 'a'
       end
  end 
  File.rename name, new_name
  text_counter = text_counter + 1
end  
  


