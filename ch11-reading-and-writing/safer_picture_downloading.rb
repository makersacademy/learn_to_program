# ============ MOVE THE PICS OUT OF STEVO AND INTO STEVO 2 ==============
# ============ MOVE INTO STEVO2, SELECT ALL JPGS IN STEVO ==============

Dir.chdir '/Users/sdawes/Documents/projects/stevo2'
pic_names = Dir['/Users/sdawes/Documents/projects/stevo/*.jpg']

# ============ ASK WHAT YOU WANT TO CALL THE NEW BATCH (stevepic) ==============
puts "What would you like to call this new batch?"
batch_name = gets.chomp

# ============ Downloading 4 files counter ==============
puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

# ============ ITERATE OVER EACH FILE NAME TO RENAME ==============

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts "Sorry, your file name already exists - program exiting"
    exit 
  end

  File.rename(name, new_name)
  pic_number = pic_number + 1
end

puts "Done, cutie!"
