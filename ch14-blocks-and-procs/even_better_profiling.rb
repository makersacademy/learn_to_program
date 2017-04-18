def profile block_description, &block
	start = true
  # your code here
  	if start == true 
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else block.call
		end

end
