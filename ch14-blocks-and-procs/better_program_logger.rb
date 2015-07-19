  $nesting_depth = 0
def log desc, &block
  puts (" " * $nesting_depth) + "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  returns = block.call
  $nesting_depth -=1
  puts (" " * $nesting_depth) + "...\"#{desc}\" finished, returning: #{returns}"
end