def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  r = block.call
  puts "...\"#{desc}\" finished, returning: #{r.to_s}"
end