def better_log desc, &block
  prefix = " "*$depth
  puts prefix+"Beginning \"#{desc}\"..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts prefix+"...\"#{desc}\" finished, returning: #{result}"
end