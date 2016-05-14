def program_log desc, &block
	puts "Beginning \"#{desc}\"..."
	blockReturn =  block[]
	
	puts "...\"#{desc}\" finished, returning: #{blockReturn}"
end
