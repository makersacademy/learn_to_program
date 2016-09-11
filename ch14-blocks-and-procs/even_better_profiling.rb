def profile block_description, &block
  profiling_on = true #changed from false to true to activate time profiling
    if profiling_on
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
end