Dir.chdir '../../Pictures'
pic_names = Dir['**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts pic_names

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |x|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}"
  else
    "#{batch_name}#{pic_number}"
  end
  if File.exist? (new_name + ".jpg")
    puts "#{new_name + ".jpg"} already exists. Do you want to overwrite this file?"
    overwrite = gets.chomp
    if overwrite.downcase == "no"
      new_name << "a"
    elsif overwrite.downcase != "yes"
      puts "The process has been stopped."
      exit
    end
  end
  new_name << ".jpg"
  File.rename x, new_name
  pic_number = pic_number + 1
end

puts
puts "Done!"