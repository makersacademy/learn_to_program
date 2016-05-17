$OPT_PROFILING_ON = false

def profile(desc, &block)
  return nil if $OPT_PROFILING_ON == false
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{desc}: #{duration} seconds"
end
