def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  answer = block[]
  puts "...#{desc.inspect} finished, returning: #{answer}"
end
