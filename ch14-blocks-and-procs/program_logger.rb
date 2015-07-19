def log desc, &block
    puts "Beginning \"#{desc}\"..."
  returns = block.call
  puts "...\"#{desc}\" finished, returning: #{returns}"
end