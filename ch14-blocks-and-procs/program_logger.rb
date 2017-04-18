def program_log desc, &block
  # your code here
  puts   "Beginning \"#{desc}\"..."
  return_value = block.call
  puts  "...\"#{desc}\" finished, returning: #{return_value}"
  
end