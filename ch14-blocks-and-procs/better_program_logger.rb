$indent = 0

def better_log desc, &block
  puts "#{" "*$indent}Beginning \"#{desc}\"..."
  $indent += 1
  output = block.call.to_s
  $indent -= 1
  puts "#{" "*$indent}...\"#{desc}\" finished, returning: #{output}"
end