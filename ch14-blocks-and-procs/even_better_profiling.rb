def profile block_description, &block

	profiling_on = true 	# true to profile, false to not profile

	if profiling_on
		start = Time.new
		block.call
		duration = Time.new - start
#		puts "#{block_description} took #{duration} seconds to complete"    # I wanted this but the rspec wanted what is in the book as below
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end 

end

num = 4

profile "triple" do
	triple = num * 3
	puts "Triple #{num} is #{triple}"
end