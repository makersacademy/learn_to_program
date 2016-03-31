PROFILE_ON = true
def profile block_description, &block
  if PROFILE_ON
    start_time = Time.new
    block.call if block_given?
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

# profile '25000 doublings' do
#   number = 1
#   25000.times { number += number }
#   puts "#{number.to_s.length} digits"  
# end

# profile 'count to a million' do
#   1000000.times { |x| x }
# end
