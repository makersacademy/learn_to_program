def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  block_call = block.call
  puts "...\"#{desc}\" finished, returning: #{block_call}"
end


