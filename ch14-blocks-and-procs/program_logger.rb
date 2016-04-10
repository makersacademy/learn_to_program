def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  output = block.call
  puts "...#{desc.inspect} finished, returning: #{output}"
end