$nest_depth = 0

def better_log desc, &block
  puts (' ' * $nest_depth) + "Beginning \"#{desc}\"..."
  returned = block.call
  puts "...\"#{desc}\" finished, returning: #{returned}"
  $nest_depth += 1
end