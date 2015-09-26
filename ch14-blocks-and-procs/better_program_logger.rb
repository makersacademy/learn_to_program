$nesting_depth = 0

def log desc, &block
  depth = ' '*$nesting_depth
  puts "#{depth}Beginning \"#{desc}\"..."
  $nesting_depth = $nesting_depth + 1
  result = block.call
  $nesting_depth = $nesting_depth - 1
  puts "#{depth}...\"#{desc}\" finished, returning: #{result}"

end
