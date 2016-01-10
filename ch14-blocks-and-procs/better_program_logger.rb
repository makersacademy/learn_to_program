$nesting_depth = -1

def better_log desc, &block
  $nesting_depth += 1
  puts " "*$nesting_depth + "Beginning \"#{desc}\"..."
  output = block.call
  puts " "*$nesting_depth + "...\"#{desc}\" finished, returning: #{output}"
  $nesting_depth -= 1
end
