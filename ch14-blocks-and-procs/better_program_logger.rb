def better_log desc, &block

$indent ? $indent : $indent = 0
  puts "#{" " * $indent}Beginning \"#{desc}\"..."
  $indent += 1
  output = block.call
  $indent -= 1
  puts "#{" " * $indent}...\"#{desc}\" finished, returning: #{output}"
end