def program_log block_description, &block
  puts "Beginning \"#{block_description}\"..."
  return_value = block.call
  puts "...\"#{block_description}\" finished, returning: #{return_value}"
end

