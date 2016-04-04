$depth = 0
def log description, &block
	indent = "   " * $depth
	puts indent + "Beginning '#{description}'..."
	$depth += 1
	output = block.call
	$depth -= 1
	puts indent + "...'#{description}' finished, Returns: #{output}"

end

log 'outer block' do
	log 'some little block' do
		log 'teeny-tiny block' do
			'lOtS oF lOVe'.downcase
		end
		7 * 3 * 2
	end
	log 'yet another block' do
	'!doof naidnI evol I'.reverse
	end
	'0' == "0"
end
