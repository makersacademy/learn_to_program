 def profile block_description, &block
   # your code here
 end 
   profiling_on = true
   if profiling_on
     start_time = Time.new
     
     duration = Time.new - start_time
     puts "#{block_description}: #{duration} seconds"
   
   else
     block.call
   end  
 end