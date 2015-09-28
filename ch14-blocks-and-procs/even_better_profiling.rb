def profile block_description, &block

  switch = true
  if switch
    start = Time.new
    block.call
    duration = Time.new - start
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
  # That's the number of digits in this HUGE number.
end

# profile 'count to a million' do
#   number = 0
#   1000000.times do
#     number = number + 1
#   end
# end

# profile 'potato counter' do 
#   number = 0
#   1000000.times do
#     number = number + 1
#   end
# end
