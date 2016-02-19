# Better method - use a global variable such as $OPT_PROFILING_ON = true

def profile block_description, &block
  profiling = true        # toggles whether to output the profiling
  if profiling == true
    start_time = Time.new
    yield
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    yield
  end
end

million = Proc.new do
  number = 0
  1000000.times do
    number += 1
  end
end

profile "Count to a million", &million
