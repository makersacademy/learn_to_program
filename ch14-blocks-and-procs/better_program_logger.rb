$nesting_depth = 0

def better_log desc, &block
	puts ' ' * $nesting_depth + "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  result = block.call
	$nesting_depth -= 1
	puts ' ' * $nesting_depth + "...\"#{desc}\" finished, returning: #{result}"
end