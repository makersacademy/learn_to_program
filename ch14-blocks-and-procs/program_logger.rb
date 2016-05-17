def program_log desc, &block
  # your code here
  puts "Beginning \"#{desc}\"..."
  mwahaha = block.call
  puts "...\"#{desc}\" finished, returning: #{mwahaha}"
end
