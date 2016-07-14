filename = 'LsterQuote.txt'
test_string = "This is a test string.  I do not see the point of this exercise..."
file.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename
puts(read_string == test_string)