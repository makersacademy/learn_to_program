$nesting_depth = 0
def better_log desc, &block
  indent = ' '*$nesting_depth
  puts "#{indent}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  return_v = block.call
  $nesting_depth -= 1
  puts "#{indent}...\"#{desc}\" finished, returning: #{return_v}"
end
