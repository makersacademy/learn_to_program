$block_depth = 0

def program_log desc, &block
	indent = " "*$block_depth

	puts indent + "Beginning #{desc}..."

	$block_depth = $block_depth + 1

  	result = block.call

  	$block_depth = $block_depth - 1

  	puts indent + "#{desc} finished, returning: #{result}"
  
end

# program_log 'outer block' do
# 	program_log 'some little block' do
# 		1**1 + 2**2
# 	end

# 	'0' == 0
# end