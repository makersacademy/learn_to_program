def profile(block_description, &block)
  # &block is being turned into a proc
  profiling_on = true
  if profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile('25000 doublings') do #from here to end is &block
  number = 1
  25000.times do
    number += number
  end
  puts "#{number.to_s.length} digits"
end

profile('count to a million') do
  number = 0
  1000000.times do
    number += 1
  end
end
