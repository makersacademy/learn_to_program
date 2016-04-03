$space = 0
def better_log desc, &block
	before = " " * $space
	puts before + "Beginning #{desc.inspect}..."
	$space += 1
  result = block.call
  	$space -= 1
  puts  before + "...#{desc.inspect} finished, returning: #{result}"
end