def program_log    desc , &block
    
  puts "Beginning #{desc.inspect}..."
  output = block[]
  puts "...#{desc.inspect} finished, returning: #{output}"
end
