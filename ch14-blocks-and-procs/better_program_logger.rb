$depth = 0

def log desc, &block
  nesting_depth = ' ' * $depth
  puts nesting_depth + "Beginning \"#{desc}\"..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts nesting_depth + "...\"#{desc}\" finished, returning: #{result}"
end