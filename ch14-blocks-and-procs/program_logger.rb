=begin
def program_log desc, &block
  puts "Logging activated. Calling block: #{desc}"
  return_value = block.call
  puts "Exiting block #{desc} with return value #{return_value}"
end
=end

#^solution i wrote
#follows the solution from the book to pass

def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block[]
  puts "...#{desc.inspect} finished, returning: #{result}"
end
