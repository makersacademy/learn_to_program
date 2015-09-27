$do_profile = true

def profile block_description, &block

  if $do_profile
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

$do_profile = false 
profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
end

$do_profile = true 

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end 
end

