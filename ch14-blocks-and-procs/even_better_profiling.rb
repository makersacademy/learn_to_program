def profile block_description, &block
  profile_on = false
  if profile_on
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
else
  block.call
end
end

profile '10000 multiplications' do
  number = 1

  10000.times do
    number = number * 22
  end

  puts "#{number.to_s.length} digits"
end
