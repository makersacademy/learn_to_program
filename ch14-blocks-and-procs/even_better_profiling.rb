def profile block_description, &block
	on_off = false
    start_time = Time.new if on_off.freeze
    block.call
    duration = Time.new - start_time if on_off
    puts "#{block_description}: #{duration} seconds" if on_off
end