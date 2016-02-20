$how_deep = 0
def better_log desc, &block
  indent = ' ' * $how_deep
  puts "#{indent}Beginning \"#{desc}\"..."
  $how_deep += 1
  to_return = block.call
  $how_deep -= 1
  puts "#{indent}...\"#{desc}\" finished, returning: #{to_return}"
end
