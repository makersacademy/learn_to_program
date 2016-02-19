$logging_depth = 0

def better_log block_description, &block
  puts ' ' * $logging_depth + "Beginning \"#{block_description}\"..."
  $logging_depth += 1
  result = block.call
  $logging_depth -= 1
  puts ' ' * $logging_depth + "...\"#{block_description}\" finished, returning: #{result.to_s}"
end