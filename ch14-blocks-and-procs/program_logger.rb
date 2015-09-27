def log_this desc, &block
  puts "Beginning \"#{desc}\"..."
  returned = block.call
  puts "...\"#{desc}\" finished, returning: #{returned}"
 end
