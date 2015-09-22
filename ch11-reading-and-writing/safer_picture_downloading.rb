#Searches Downloads folder for pictures and renames/moves them to Pictures folder

Dir.chdir '/users/alexlemons/Pictures'

pics = Dir["/users/alexlemons/Downloads/*.{JPG,jpg}"]

puts "What would you like to call this batch of photos?"
batch_name = gets.chomp

print "Moving #{pics.length} files: "

pic_number = 1

pics.each do |name|
  print "." #Progress bar


  if File.exist?("#{batch_name}#{pic_number}.jpg") == true
    puts "batch already exists"
    exit
  else
    new_name = "#{batch_name}#{pic_number}.jpg"
  end

  File.rename name, new_name

  pic_number = pic_number + 1

end
