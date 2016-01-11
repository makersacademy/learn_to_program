def better_log desc, &block
  $spaces ||= 0
  puts (" " * $spaces) + "Beginning \"#{desc}\"..."
  $spaces += 1
  puts (" " * ($spaces - 1)) + "...\"#{desc}\" finished, returning: #{block.call}"
  $spaces -= 1
end
