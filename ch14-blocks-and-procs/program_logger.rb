def log desc, &block

puts "Beginning #{desc.inspect}..."

result = block[]

puts "...#{desc.inspect} finished, returning: #{result}"

end
