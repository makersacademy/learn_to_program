def log desc, &block 
	puts "Beginning #{desc.inspect}..."
	result = block.call
	puts "... #{desc.inspect} finished, returning:" + result.to_s
end 


log 'outer block' do 
	log ' some little block' do 1+2*5
	end 

	log 'yet another block' do 
		33**2
	end 
	'0' == 0
end 