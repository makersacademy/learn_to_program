$nest = 0
def better_log desc, &block
  puts "#{' ' * $nest}Beginning \"#{desc}\"..."
  $nest += 1
  var = block.call
  $nest -= 1
  puts "#{' ' * $nest}...\"#{desc}\" finished, returning: #{var}"
end