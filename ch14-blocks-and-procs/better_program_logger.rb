$indent = 0

def better_logger(desc, &block)
  puts "#{' ' * $indent}Beginning \"#{desc}\"..."
  $indent += 1
  result = block.call
  $indent -= 1
  puts "#{' ' * $indent}...\"#{desc}\" finished, returning: #{result}"
end