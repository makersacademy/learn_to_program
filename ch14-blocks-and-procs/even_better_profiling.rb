$OPT_PROFILING_ON = false

def profile block_description, &block
  start_time = Time.new if $OPT_PROFILING_ON
  block.call
  duration = Time.new - start_time if $OPT_PROFILING_ON
  puts "#{block_description}: #{duration} seconds" if $OPT_PROFILING_ON
end
