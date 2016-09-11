$OPT_PROFILING_ON = false
def profile block_description, &block
  if $OPT_PROFILING_ON
    start_time = Time.new
    block[]
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block[]
  end
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number += number
  end

  puts "#{number.to_s.length} digits"
end

million_count = Proc.new do
  number = 0
  1000000.times do
    number += 1
  end
end
