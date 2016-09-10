def program_log desc, &block 
  puts "Beginning \"#{desc}\"..."
  #block.call # block call not needed, as have it assigned to 'result' variable
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
end