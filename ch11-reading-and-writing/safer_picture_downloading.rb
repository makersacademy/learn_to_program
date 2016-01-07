#!/usr/local/bin ruby
LOC_HOME = Dir.home

Dir.exist?(File.join(LOC_HOME, "Desktop/pics")) ? "" : Dir.mkdir(File.join(LOC_HOME, "Desktop/pics"))

Dir.chdir(File.join(LOC_HOME, "/Desktop/pics"))

pic_names = Dir["#{LOC_HOME}/Pictures/*.jpg"]

err   = false
err_n = 0

def exiting(err, err_n)
  at_exit do 
   puts "Some file could not be overwritten" if err
   puts "Process Terminated with #{err_n} files not copied."
  end
end


puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts 
print "Downloading #{pic_names.size} files: "

pic_number = 1

pic_names.each do |name|
  print '.' 
  
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?("#{LOC_HOME}/Desktop/pics/#{new_name}") 
  begin
    err = true
    err_n += 1
    raise NameError.new "File #{new_name} exists."
  rescue => e
    puts e
  end
  else
    File.rename(name, new_name) 
  end
  

  pic_number += 1
  
  
  
 end

 exiting(err, err_n)



 