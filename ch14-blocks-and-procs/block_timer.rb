def profile block_description, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile 'count to a million' do number = 0
  1000000.times do
    number = number + 1
  end
end

block_timer = Proc.new do |block|
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{duration} seconds"
end
