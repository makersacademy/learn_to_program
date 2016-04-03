def program_log desc, &block
  # your code here
  puts "Beginning #{desc.inspect}..."
  result = block.call
  puts "...#{desc.inspect} finished, returning: #{result}"
end

