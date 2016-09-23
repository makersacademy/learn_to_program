def profile block_description, &block
  do_profile = false
    if do_profile
      start_time = Time.new
      block.call
      duration = Time.new - start_time
      puts "'#{block_description}' took #{duration} seconds to run."
    else
      block.call
    end  
end

profile 'Count to a high number' do
    num = 0
    1000000.times do
        num += 1
    end
    puts num
end

