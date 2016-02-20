Dir.chdir '/Users/Gabrielle/Pictures'

pic_names = Dir['./*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_names.each_with_index do |elem, index|
    new_name = "#{batch_name}#{ 0 if index < 10 }#{index}.jpg"

  abort('file already exists!') if File.exist?(new_name)
  File.rename elem, new_name
end

puts
puts 'Done! '