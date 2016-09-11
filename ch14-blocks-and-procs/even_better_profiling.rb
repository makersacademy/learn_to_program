def profile block_description, &block
  profiling_on = false
  
  if profiling_on
    start_time = Time.new
    block.call
    
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds" 
  else
    block.call
  end
end

# 25000 doublings block
profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
end

# count to a million
profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end