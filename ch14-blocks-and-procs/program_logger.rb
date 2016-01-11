def log desc, &block
  puts "Beginning \"#{desc}\"..."
end

def program_log desc, &block
  log desc do
    block.call
  end


  puts "...\"#{desc}\" finished, returning: #{block.call}"


end
