
Dir.chdir "./test_new/"
pic_names = Dir['../test/*.{jpg}']


puts "What you would like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"

  end

unless File.exist? new_name
  File.rename name, new_name
else
  puts "Exit program: #{new_name} already exist"
  exit
end



  pic_number = pic_number + 1
end

puts
puts "Done!"
