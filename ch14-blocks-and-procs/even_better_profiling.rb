def profile block_description, &block
  
  profile_run = true
  
  if profile_run == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"
end