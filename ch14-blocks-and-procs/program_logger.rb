def program_log desc, &block

  puts "Beginning \"#{desc}\"..."
  answer = block.call
  puts "...\"#{desc}\" finished, returning: #{answer}"

end
