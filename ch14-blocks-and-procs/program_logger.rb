def program_log(desc, &block)
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
end
