Dir.chdir 'C:/Users/Tom/Photos'

pic_names = Dir['C:/Users/Tom/Test/*.jpg']

batch_name = '.'

while File.exists?(batch_name)
    print 'Desired batch name: '
    batch_name = gets.chomp
    puts
    if File.exists?(batch_name)
        puts "#{batch_name} already exists. Think of a new batch name."
    end
end
print "Copying #{pic_names.length} files: "

pic_num = 1

pic_names.each do |name|
    print '.'
    new_name = if pic_num < 10 and File.exists?("#{batch_name}0#{pic_num}.jpg") == false
        "#{batch_name}0#{pic_num}.jpg"
    elsif File.exists?("#{batch_name}#{pic_num}.jpg") == false
        "#{batch_name}#{pic_num}.jpg"
    else
        exit
    end
    File.rename name, new_name
    pic_num += 1
end