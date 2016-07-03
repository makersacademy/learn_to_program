$depth = 0

def better_log(desc, &block)
  depth = ' ' * $depth

  puts "#{depth}Beginning \"#{desc}\"..."
  $depth += 1
  call = block.call
  $depth -= 1
  puts "#{depth}...\"#{desc}\" finished, returning: #{call.to_s}"
end
