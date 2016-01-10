def profile block_description, &block
  if $OPT_PROFILING_ON
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

#$OPT_PROFILING_ON = true
#profile 'test code' do
#  sleep 2
#  puts "Code done!"
#end
#
#$OPT_PROFILING_ON = false
#profile 'test code' do
#  sleep 2
#  puts "Code done!"
#end
