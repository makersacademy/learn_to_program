def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  to_return = block.call
  puts "...\"#{desc}\" finished, returning: #{to_return}"
end
