def log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block.call
  puts "...#{desc.inspect} finished, returning: #{result}"
end