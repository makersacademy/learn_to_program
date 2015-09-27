def profile block_description, &block
	profiling_on = true
	if profiling_on
	 	start_time = Time.new
	  	block.call
	  	duration = Time.new - start_time
	  	puts "#{block_description}: #{duration} seconds"
	else
	  	block.call
	end
end





=begin
profile '2500 doublings' do 
	number =1
	25000.times do
		number + number
	end
	puts "#{number.to_s.length} digits"
end


profile 'count to a million' do
	number = 1
	1000000.times do
		number + 1
	end
end
=end