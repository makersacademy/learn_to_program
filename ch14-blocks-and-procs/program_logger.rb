def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  returned = block[]
  puts "...#{desc.inspect} finished, returning: #{returned}"
end
