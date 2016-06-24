def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  call = block.call
  puts "...\"#{desc}\" finished, returning: #{call.to_s}"
end
