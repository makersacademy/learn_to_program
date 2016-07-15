def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  var = block.call
  puts "...\"#{desc}\" finished, returning: #{var}"
end