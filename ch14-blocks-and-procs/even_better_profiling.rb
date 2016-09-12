def profile block_description, &block
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_description}: #{duration} seconds"
end

profile '25000 doublings' do 
	number = 1
	25000.times do
		number = number + number
	end
	puts "#{number.to_s.length} digits"
	# i.e number of digits in this huge number
end

profile 'count to a million' do
	number = 0
	1000000.times do
		number = number + 1
	end
end