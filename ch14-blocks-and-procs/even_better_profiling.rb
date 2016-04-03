
def profile block_description, &block 
  if true
	start_time = Time.new
	block.call # calling the do-end block we created
	duration = Time.new - start_time
	puts "#{block_description}: #{duration} seconds"
  else
  	block.call
  end
end

