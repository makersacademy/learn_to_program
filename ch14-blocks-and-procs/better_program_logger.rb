$nesting_gap = String.new

def better_log desc, &block
  puts "#{$nesting_gap}Beginning \"#{desc}\"..."
	$nesting_gap << ' '
	returned = block.call
	$nesting_gap.sub!(' ', '')
	puts "#{$nesting_gap}...\"#{desc}\" finished, returning: #{returned.to_s}"
end
