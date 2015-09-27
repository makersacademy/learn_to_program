def log desc, &block
	puts 'Beginning "' + desc + '"...'
	result = block.call
	puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
	log 'some little block' do + result.to_s
		1**1 + 2**2
	end
log 'yet another block' do
		'finish'
end
'0' == 0
end

log(desk, &log)