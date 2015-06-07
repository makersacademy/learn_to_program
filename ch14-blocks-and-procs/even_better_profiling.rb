def profile block_description, &block
# To turn profiling on/off, set this # to true/false.
        profiling_on = false
if profiling_on start_time = Time.new block.call
          duration = Time.new - start_time
puts "#{block_description}: #{duration} seconds" else
block.call
end end
How I would do it:
      $OPT_PROFILING_ON = false
def profile block_description, &block if $OPT_PROFILING_ON
          start_time = Time.new
          block[]
          duration = Time.new - start_time
          puts "#{block_description}:  #{duration} seconds"
else
block[]
end end
# your code here