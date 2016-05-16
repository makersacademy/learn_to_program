$depth = 0
def better_log desc, &block
  
  
  puts (" " * $depth) + "Beginning \"#{desc}\"..."
  $depth += 1
  return_value = block.call
  $depth -= 1
  puts (" " * $depth) + "...\"#{desc}\" finished, returning: #{return_value}"
  
  
  
end