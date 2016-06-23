def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  return_v = block.call
  puts "...\"#{desc}\" finished, returning: #{return_v}"
end
