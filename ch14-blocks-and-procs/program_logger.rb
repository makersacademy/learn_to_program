def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  output = block.call.to_s
  puts "...\"#{desc}\" finished, returning: #{output}"
end
