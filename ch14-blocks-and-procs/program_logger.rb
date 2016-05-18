def program_log desc, &block
	puts 'Beginning "' + desc + '"...'
	resulting = block.call
	puts '..."' + desc + '" finished, returning: ' + resulting.to_s
end

program_log 'outer block' do
	program_log 'some little block' do
		5 * 1
	end

	program_log 'yet another block' do
		"I like Thai food"
	end

1 == 2
end
