$nesting_depth = 0

def better_log desc, &block

  spaces = ' '*$nesting_depth
  puts "#{spaces}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  result = block.call
  $nesting_depth -= 1
  puts "#{spaces}...\"#{desc}\" finished, returning: #{result.to_s}"

end
