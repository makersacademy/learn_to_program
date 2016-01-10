def profile block_description, &block
    profiling_on = false
    if profiling_on == true
        start_time = Time.new
        block.call
        duration = Time.new - start_time
        puts "#{block_description}: #{duration} seconds"
    end
         # your code here
end