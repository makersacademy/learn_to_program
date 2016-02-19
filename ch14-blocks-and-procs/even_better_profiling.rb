def profile block_description, &block
start_time = Time.new
block.call
duration = Time.new - start_time

puts "#{block_description}: #{duration} seconds"
end
number = ""
count = 1
profile "test" do
  1000000.times do
  number = count.to_s + ":"
  count += 1
  end
end