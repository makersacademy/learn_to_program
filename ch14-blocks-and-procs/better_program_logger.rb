$nesting_depth=0

def better_log desc, &block
tabs= " "*$nesting_depth
$nesting_depth+=1
	puts tabs+ "Beginning \"#{desc}\"..."
	puts tabs+ "...\"#{desc}\" finished, returning: #{block.call}"
$nesting_depth-=1	
end