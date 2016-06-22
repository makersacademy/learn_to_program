pic_names = Dir['*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp
print "Downloading #{pic_names.length} files"

pic_number = 1

pic_names.each do |name|
    print "."
    new_name = "#{batch_name}0#{pic_number}.jpg"
    if (File.exist? new_name) == false
        File.rename name, new_name
    else exit
    end
    pic_number += 1
end
    