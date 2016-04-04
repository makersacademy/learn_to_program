$depth = 0
def log description, &block
	puts "Beginning '#{description}'..."
	output = block.call
	puts "...'#{description}' finished, Returns: #{output}"

end

log 'outer block' do
	log 'some little block' do
		1**1 + 2**2
	end
	log 'yet another block' do
		'!doof iahT ekil I'.reverse
	end
	'0' == 0
end
