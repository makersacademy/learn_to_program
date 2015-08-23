$depth = 0

def log desc, &block
  indentation = ' ' * $depth
  puts "#{indentation}Beginning \"#{desc}\"..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts "#{indentation}...\"#{desc}\" finished, returning: #{result}"
end