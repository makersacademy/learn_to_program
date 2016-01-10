 $NESTING_DEPTH = 0
def better_log block_name, &block
	puts " "*$NESTING_DEPTH + 'Beginning "' + block_name + '"...'
	$NESTING_DEPTH += 1
	val = block.call
	$NESTING_DEPTH -= 1
	puts " "*$NESTING_DEPTH + '..."' + block_name + '" finished, returning: ' + val.to_s
end

