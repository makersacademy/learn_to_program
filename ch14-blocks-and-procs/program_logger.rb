def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
	returned = block.call
	puts "...\"#{desc}\" finished, returning: " + returned.to_s
end
