
def profile block_description, &block
  #turn profiling off and on with a boolean
  profiling = true
  if profiling = true
     start_time = Time.new
     block.call
     duration = Time.new - start_time
     puts "#{block_description}: #{duration} seconds"
  else
     block.call
  end
end

=begin
#better way of doing it since you can set the profiling using the commandline
$OPT_PROFILING_ON = false

def profile block_description, &block
  if $OPT_PROFILING_ON
    start_time = Time.new
    block[]
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block[]
  end
end
=end


