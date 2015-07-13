def log desc, &block
    puts "Beginning #{desc}..."
  returns = block.call
  puts "#{desc} completed."
  puts "returns: #{returns}"
end