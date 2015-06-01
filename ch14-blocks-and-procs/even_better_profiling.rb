def profile block_description, &block
  if $PROFILING_ON
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    p "#{block_description}: #{duration}"
  else
    block.call
  end
end

$PROFILING_ON = true

profile "count to a million" do
  number = 0
  1_000_000.times do
    number += 1
  end
  p number
end
