filename = 'first_text.txt'
test_string = 'Blah, blah, blah ' + 'blah, blah, blah'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)
