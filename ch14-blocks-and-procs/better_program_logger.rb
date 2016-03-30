$nesting_depth = 0

def better_log block_description, &block
  puts " " * $nesting_depth + "Beginning \"#{block_description}\"..."
  $nesting_depth += 1
  return_value = block.call
   $nesting_depth -= 1
  puts " "* $nesting_depth + "...\"#{block_description}\" finished, returning: #{return_value}"
end
