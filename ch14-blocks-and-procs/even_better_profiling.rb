def profile block_description, &block
  # your code here

  profiling_is_on = true
  if profiling_is_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds" 
  else
    block.call
  end 
end

profile 'count to three million' do 
  number = 0
  3000000.times do
    number = number + 1
  end 
end