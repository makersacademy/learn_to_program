$OPT_PROFILING_ON = true

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


# profile 'count to a million' do
# 	number = 0
# 	1000000.times do
# 		print "."
# 		number = number +1
# 	end
# end