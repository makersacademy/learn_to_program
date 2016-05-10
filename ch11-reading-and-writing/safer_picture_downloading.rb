

directory = '/Users/Alex_Swann/Documents/RUBY/Makers_Academy/Precourse - Week 3/Picture_files/Computer'

Dir.chdir directory

pic_names = Dir['../USB_Stick/*.jpg']
puts 'What would you like to call this batch?'
batch_name = 'screenshots' #gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
f = 0
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
              "#{batch_name}0#{pic_number}.jpg"
            else
              "#{batch_name}#{pic_number}.jpg"
            end

  if Dir.open(directory).include?(new_name)
    f += 1
  else
    File.rename name, new_name
  end
  pic_number += 1
end

puts
puts "#{f} files did not copy over to avoid overwriting existing files."
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'# your code here

=begin
file = File.new('./hey.txt', 'w')
File.open(file)
file.close

file2 = File.new('./hey2.txt', 'w')
File.open(file2)
file2.close


puts
arr = []
ObjectSpace.each_object(File).count {|x| arr << x.closed?}
p arr
4.times { arr.delete_at(arr.index(arr.find{|x| x == true})) }
p arr
bool = arr[0..-5].count{|x| x == true} == arr[0..-5].count{|x| x == false}
if bool
  puts "All files closed!"
else
  puts "Some files are still open. Make sure to shut your files."
end
=end
puts