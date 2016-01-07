$nesting_depth = -1

def better_log(desc, &block)
  $nesting_depth += 1
  space = "\s" * $nesting_depth || 1
  puts "#{space}Beginning \"#{desc}\"..."
  result = block.call
  puts "#{space}...\"#{desc}\" finished, returning: #{result}"
  $nesting_depth -= 1
end