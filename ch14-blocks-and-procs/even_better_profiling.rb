def profile block_descripton, &block
profile_on = true
  if profile_on == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_descripton}: #{duration} seconds"
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

profile 'count_to_one_million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
