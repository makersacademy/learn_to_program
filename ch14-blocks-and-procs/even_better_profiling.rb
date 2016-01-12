def profile block_description, &block
	profile_on = true
	if profile_on
		start_time = Time.new
		block.call
		puts "#{block_description}: #{Time.new - start_time} seconds"
	else
		block.call
	end
end


