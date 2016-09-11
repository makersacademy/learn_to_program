$nesting_depth = 0

def better_log desc, &block
  indent = " " * $nesting_depth
  puts "#{indent}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  result = block.call
  puts "#{indent}...\"#{desc}\" finished, returning: #{result}"
  $nesting_depth -= 1
end