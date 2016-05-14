def profile block_description, &block
profiling = true
 if profiling == true
 	then 
  		begin_time = Time.new
  		block.call
  		dur = Time.new - begin_time
  		puts "#{block_description}: #{dur} seconds"
 	else
  		block.call
 end
end