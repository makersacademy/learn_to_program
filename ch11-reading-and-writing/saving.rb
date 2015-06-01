# The filename doesn't have to end with .txt,
# but since it is valid text, why not?

filename    = 'ArmstrongQuote.txt'
test_string = 'One small step for man ' +
			  'One giant leap for mankind.'

# The 'w' here is for write-acess to the file,
# since we are trying to write to it

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename

puts(read_string == test_string)