
def profile block_description, &block
  # your code here
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

profile 'some bottles' do
	bottles = 10**6
	while bottles > 1 
		bottles = bottles - 1
		puts "#{bottles} bottles of beer on the wall"
	end
end
