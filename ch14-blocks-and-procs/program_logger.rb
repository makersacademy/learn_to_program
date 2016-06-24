def program_log desc, &block

puts "Beginning #{desc.inspect}..."
a = block[]
puts "...#{desc.inspect} finished, returning: #{a}"

end
