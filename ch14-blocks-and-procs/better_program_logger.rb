$nest_depth = 0

def better_log desc, &block
  puts (' ' * $nest_depth) + "Beginning \"#{desc}\"..."
  $nest_depth += 1
  returned = block.call
  $nest_depth -= 1
  puts (' ' * $nest_depth) + "...\"#{desc}\" finished, returning: #{returned}"  
end