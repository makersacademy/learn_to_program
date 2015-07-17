$space_left=0 
def log desc, &block
	prefix= ' '*$space_left
	puts prefix + "Beginning #{desc.inspect}..."
	$space_left += 1
	result = block.call
	$space_left -=1
	puts prefix + "... #{desc.inspect} finished, returning:" + result.to_s
end



log 'outer block' do
	log 'some little block' do
		log 'teeny-tiny block' do 
			  1+2*5
			end 
			33**2
		end

		log 'yet another block' do 
			'!doof iahT ekil I'.reverse
		end
'0' == "0" 
end