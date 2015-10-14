# require 'YAML'

# test_array = ['First test item',
#               'Second test item',
#               'Third test item']
# test_string2 = test_array.to_yaml

# filename2 = 'testfile.txt'



# filename = 'bigOlFile.txt'
# test_string = 'this is just rubbish' + ' - do you really think so.'

# File.open filename2, 'w' do |f|
#   f.write test_string2
# end

# read_string2 = File.read filename2

# read_array = YAML::load read_string2
# puts (test_string2 == read_string2)
# puts (test_array == read_array)



# buffy_quote_1 = '\'Kiss rocks\'?
#                  Why would anyone want to kiss...
#                  Oh, wait. I get it.'
# buffy_quote_2 = "'Kiss rocks'?\n" +
#                 "Why would anyone want to kiss...\n" +
#                 "Oh, wait. I get it."
# puts buffy_quote_2
# puts
# puts(buffy_quote_1 == buffy_quote_2)


# require 'yaml'
# def yaml_save object, filename
#   File.open filename, 'w' do |f|
#     f.write(object.to_yaml)
#   end
# end

# def yaml_load filename
#   yaml_string = File.read filename

#   YAML::load yaml_string
# end

# test_array = ['Slick Shoes',
#               'Bully Blinders',
#               'Pinchers of Peril']

# filename = 'DatasGadgets.txt'

# yaml_save test_array, filename

# read_array = yaml_load filename

# puts (read_array == test_array)

Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1
pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  File.rename name, new_name
  pic_number +=1
end

puts
puts 'All done'


