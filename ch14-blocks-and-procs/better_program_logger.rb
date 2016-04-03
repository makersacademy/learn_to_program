$nesting_depth = 0

def better_log desc, &block
  tabs = " " * $nesting_depth
  puts "#{tabs}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  result = block.call
  puts "#{tabs}...\"#{desc}\" finished, returning: #{result}"
  $nesting_depth -= 1
end
