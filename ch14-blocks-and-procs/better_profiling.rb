def profile block_description, &block

  profiling_on = true   #set to true/false if you want it on/off

  if profiling_on
    start_time = Time.new
    block.call

    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end


profile '500 doublings' do
  number = 0
  500.times do
    number = number + 1
  end

  puts "#{number.to_s.length} digits."
end
