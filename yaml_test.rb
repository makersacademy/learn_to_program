require 'yaml'

test array = ['Reiss Johnson', 'REISS JOHNSON!', 'reiss johnson' ]

test_string = test_array.yaml

filename = 'reissjohnson.txt'

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename

puts (read_string == test_string)
puts (read_aray == test_array)