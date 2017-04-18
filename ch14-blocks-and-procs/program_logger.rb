def program_log desc, &block
  puts "Beginning #{desc.inspect}..." 
  puts "...#{desc.inspect} finished, returning: #{yield}"
end

