$PROFILING_ON = true

def profile block_description, &block

  if $PROFILING_ON
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} secs"
  else
    block.call
  end
end



profile "one hundred to the power of one hundred" do
  100**100
end

profile "one hundred to the power of one thousand" do
  100**1000
end
