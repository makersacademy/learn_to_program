# Could only get this to pass after looking at the spec and finding that the
# the profiling on/off variable had to be called "$OPT_PROFILING_ON"

def profile (block_description, &block) # providing an &name at the end of
  $OPT_PROFILING_ON = true
  if $OPT_PROFILING_ON
    start_time = Time.new                 # your list of parameters, ensures that
    block.call                            # your method doesn't ignore your block
    duration = Time.new - start_time      # and DOES turn it into a proc.
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

# profile '25000 doublings' do
#   number = 1
#   25000.times do
#     number = number + number
#   end
#
#   puts "#{number.to_s.length} digits"   # number of digits in this huge number
# end
#
# profile "count to a million" do
#   start_num = 0
#   1000000.times do
#     start_num = start_num + 1
#   end
# end
