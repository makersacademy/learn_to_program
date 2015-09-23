# your code here
# Since I am not sure how to find what removable drives are on mac
# I am just assuming the user will provide for source and a destination
#

require "fileutils.rb"

def ask question
  # your code here
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end


ans = "yes"
list=[]
dest=""
while ans == "yes"

  puts "Please enter source - from where the files are to be coiped"
  srce = gets.chomp

  list = Dir["#{srce}/*/*.jpg"]

  if list.length == 0
    puts "No jpg files found at #{srce}"
    ans = ask("Do you want to give another source?") == true ? "yes" : "no"
  else
    ans = "no"
  end
end

ans = "yes"
while ans == "yes"
  puts "Please enter destination"
  dest = gets.chomp
  if !Dir.exist?(dest)
    puts "Incorrect destination"
    ans = ask("Do you want to give another destination?") == true ? "yes" : "no"
  else
    ans = "no"
  end
end

list.each do |flnm|

  dflnm = "#{dest}/"+File.basename(flnm)

  if !File.exist?(dflnm)
    puts "Renaming ==> #{flnm} TO #{dflnm}"
    FileUtils.cp flnm, dflnm
    puts
  else
    puts "File #{dflnm} already exist"
    puts
   end
end











