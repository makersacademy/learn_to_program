def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  output = block.call
  puts "...\"#{desc}\" finished, returning: #{output}"
end

