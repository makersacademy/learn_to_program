$indentation = 0

def better_log desc, &block
  puts " " * $indentation + "Beginning \"#{desc}\"..."
  $indentation = $indentation + 1
  result = block.call
  $indentation = $indentation - 1
  puts " " * $indentation + "...\"#{desc}\" finished, returning: #{result}"
end