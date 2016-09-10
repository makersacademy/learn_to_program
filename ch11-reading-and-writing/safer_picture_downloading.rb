pic_names = Dir["**/*.{JPG,jpg}"]
puts "How would you want to call this batch?"
batch_name = gets.chomp
puts
puts "Downloading #{pic_names.length} files"
pic_number = 1
pic_names.each do |name|
    print "."
    new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
    else
    "#{batch_name}#{pic_number}.jpg"
end
if File.exist?(new_name) == true
    puts "Sorry, but you would be overwriting a picture!"
    exit
    else
    File.rename name, new_name
    pic_number = pic_number + 1
end
end

puts "Your batch have been saved with the following name: #{batch_name}!"