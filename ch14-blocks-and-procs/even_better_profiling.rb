def profile block_description, &block

  switch = true

  if switch == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds."
  end
end

profile "doubling 100 times" do
  number = 1
  100.times{number = number * 2}
end

profile "count to a million" do
  number = 0
  1000000.times{number += 1}
end
