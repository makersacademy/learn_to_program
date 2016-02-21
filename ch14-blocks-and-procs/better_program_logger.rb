$nesting_depth = 0

def better_log desc, &block
	prefix = ' '*$nesting_depth
	puts prefix + "Beginning #{desc.inspect}..."
	$nesting_depth += 1
	result = block.call
	$nesting_depth -=1
	puts prefix + "...#{desc.inspect} finished, returning: #{result}"
end

better_log "outer block" do 
	better_log "inner block" do
		"Hello"
	end

	better_log "second inner block" do
		"Bye"
	end

	true
end