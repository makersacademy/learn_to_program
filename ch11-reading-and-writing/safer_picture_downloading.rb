# your code here
Dir.chdir '/home/ubuntu/workspace/week2'

pic_names = Dir['/home/ubuntu/workspace/week2/hedgehogs/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
    print '.'
    
    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end
    
    if File.exists?(new_name)
        exit
    else
        File.rename name, new_name
    end

pic_number = pic_number + 1
end

puts
puts "All done!"

