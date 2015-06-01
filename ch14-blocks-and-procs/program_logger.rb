# your code here
def log string_description, &block
	puts 'Beginning ' + string_description + '...'
	result = block.call
	puts '...' + string_description + ' finished, returning: ' + result.to_s
end

log 'outer block' do
	log 'some little block' do
		1**1 + 2**2
	end

	log 'yet another block' do
		'!stel stel og ot hcaeb hcaeb'.reverse
	end

	'0' == 0
end