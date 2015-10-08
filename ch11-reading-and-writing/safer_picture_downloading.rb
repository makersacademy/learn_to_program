=begin

Basic safety features integrated.
Todo: 

- [ ] Check Any files exist for full batch before processing
  - [ ] Add option to change the batch name in case of file exists OR exit program
- [ ] Alternatively, option to revert any changes made if a file exist is found OR exit program leaving changes intact.
- [ ] Proper handling of directory structure (ie. a Directory variable as well as Filename variable)
- [ ] Add additional metadata to file names

=end

def warning reason_for_warning
	if reason_for_warning == 'file exists'
		puts ''
		puts "There is already a file named #{@new_name}!"
		puts "Aborted after processing #{@pic_number} files."
		exit
	else 
	  puts 'I\'m not sure what the problem is.'	
	end
end

pic_names = Dir['Pics/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "

# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
@pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".

# Generate @new_name - also this is currently moving to Processed/ but that seems a bit clunky?
@new_name = if @pic_number < 10 
    "Processed/#{batch_name}0#{@pic_number}.jpg"
  else
    "Processed/#{batch_name}#{@pic_number}.jpg" 
  end

# Check if the new name already exists. If it doesn't, actually rename/move the new file.
File.exist?(@new_name) ? warning('file exists') : File.rename(name, @new_name)
  
  #  Finally, we increment the counter.
  @pic_number = @pic_number + 1
end
puts # This is so we aren't on progress bar line. 
puts 'Done, cutie!'


