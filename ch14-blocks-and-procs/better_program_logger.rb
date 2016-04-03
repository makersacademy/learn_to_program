$nesting_depth = -1

def better_log desc, &block
  $nesting_depth += 1
  nest = ' ' * $nesting_depth.to_i
  puts "#{nest}Beginning \"#{desc}\"..."
  result = block.call
  puts "#{nest}...\"#{desc}\" finished, returning: #{result.to_s}"
  $nesting_depth -= 1
end