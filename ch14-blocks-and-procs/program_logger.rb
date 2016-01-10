def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  response = block.call
  puts "...\"#{desc}\" finished, returning: #{response}"
end