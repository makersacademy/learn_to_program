$indent = 0

def better_log desc, &block
  indent = " " * $indent
  puts "#{indent}Beginning \"#{desc}\"..."
  $indent += 1
  output = block.call
  puts "#{indent}...\"#{desc}\" finished, returning: #{output}"
  $indent -= 1
  indent = " " * $indent
end