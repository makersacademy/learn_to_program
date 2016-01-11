def profile prof=true,block_description, &block
  # your code here
  while prof
  	start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
		prof = false
	end
end

=begin
profile false,"million" do
	count = 0
	while count < 10**6
		count += 1
	end
end
=end