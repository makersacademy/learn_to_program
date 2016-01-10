$tabs = -1
def better_log desc, &block
  $tabs  += 1
  puts " "*$tabs + "Beginning \"#{desc}\"..."
  response = block.call
  puts " "*$tabs + "...\"#{desc}\" finished, returning: #{response}"
  $tabs -= 1
end