$depth = 0

def better_log desc, &block
  puts (" " * $depth) + "Beginning \"#{desc}\"..."
  $depth += 1
  mwahaha = block.call
  $depth -= 1
  puts (" " * $depth) + "...\"#{desc}\" finished, returning: #{mwahaha}"
end

