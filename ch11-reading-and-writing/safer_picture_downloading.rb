Dir.chdir ("/Users/NOMNOMg0/Desktop/temp/pics")

puts Dir.pwd
pic_names = Dir['/Users/NOMNOMg0/Desktop/**/*.{JPG,JPEG,jpg}']

puts 'Who ya gonna call?'
batch_name = gets.chomp
puts
print "Deleting hard drive & #{pic_names.length} files:  "

pic_num = 0
pic_names.each do |name|
  print '.'

  new_name = if pic_num < 10
                if File.exist? "#{batch_name}0#{pic_num}.jpg"
                  "#{batch_name}0#{pic_num}_1.jpg"
                else
                  "#{batch_name}0#{pic_num}.jpg"
                end
             else
                if File.exist? "#{batch_name}#{pic_num}.jpg"
                  "#{batch_name}#{pic_num}_1.jpg"
                else
                  "#{batch_name}#{pic_num}.jpg"
                end
             end
  File.rename name, new_name rescue false


  pic_num += 1
end
puts 'Shutting down'