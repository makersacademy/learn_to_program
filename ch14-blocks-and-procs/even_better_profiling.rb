# You can pass a block into any method by sticking the block in front
# of the method, but many methods will just ignore the block.
# To make the method not ignore the block, but grab it and turn it
# into a proc, put the name of the proc at the end of the method's
# parameter list, preceded by &. 
# CP ch14 p118

def profile block_description, &block

  do_profiling = false
  # set to false to begin with so you won't profile unless you change it.
  
  if do_profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
  	block.call
end
# the method checks the time immediately before running the block,
# and the time after it runs, then figures out the difference. I.e.
# how long the block takes to run.

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number.

end

profile 'count to a million' to
  number = 0
  100000.times.do
    number = number + 1
  end
end
