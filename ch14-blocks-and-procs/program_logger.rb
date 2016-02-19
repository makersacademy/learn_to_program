def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  puts "...\"#{desc}\" finished, returning: #{block.call}"
end


