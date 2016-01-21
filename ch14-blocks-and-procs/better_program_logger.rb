$nesting_depth = -1

def better_log desc, &block
  $nesting_depth+=1
  puts " "*$nesting_depth + "Beginning \"#{desc}\"..."
  puts " "*$nesting_depth + "...\"#{desc}\" finished, returning: #{block.call}"
  $nesting_depth += -1
end