Dir.chdir '~/dev/workspace'

pic_names = Dir['~/dev/pics/**/*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:   "

pic_num = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_num < 10
    "#{batch_name}0#{pic_num}.jpg"
  else
    "#{batch_name}#{pic_num}.jpg"
  end

  File.exist?(name) ? exit : File.rename(name, new_name)

  pic_num += 1
end

puts
puts "Done"
