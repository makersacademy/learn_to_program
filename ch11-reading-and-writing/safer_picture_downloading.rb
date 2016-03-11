# your code here


Dir.chdir '~/Users/camilla_foodity/Pictures'

pic_names = Dir['~/Volumes/SHAMA/*.jpg']

puts 'Give a name to thi batch'
batch_name = gets.chomp

puts
print "Downloadin #{pic_names.length} files: "

counter = 1
pic_names.each do |name|
  print '.'
  new_name = "#{batch_name}_counter"
  if File.esists? new_name
    exit
  end
  File.rename name, new_name
  counter += 1

end

puts
puts 'All done'
