def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block[]
  puts "...\"#{desc}\" finished, returning: #{result}"
end
