$spaces = 0
def better_log desc, &block
  puts ' '*$spaces+"Beginning \"#{desc}\"..."
  $spaces += 1
  returned = block.call
  $spaces -= 1
  puts ' '*$spaces+"...\"#{desc}\" finished, returning: #{returned}"
end
