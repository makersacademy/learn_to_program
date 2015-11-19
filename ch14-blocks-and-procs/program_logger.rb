def log desc, &block
  puts 'Beginning " ' + desc + ' "...'
  result = block.call
  puts '..." ' + desc + ' "finished, returning: ' + result.to_s
end
log 'outer block' do
	log 'some little block' do
		1**1 + 2**2
	end
	
	log 'another block' do
		'!pu em tiH'.reverse
	end
	
	'0' == 0
end