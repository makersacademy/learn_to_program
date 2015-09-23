def log desc, &block
  puts "Beginning #{desc.inspect}..."
  return_value = block.call
  puts "...#{desc.inspect} finished, returning: #{return_value}"
end
