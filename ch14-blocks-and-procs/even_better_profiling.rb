#
# def profile (block_description, &block)
#   start_time = Time.new
#   block.call if true
#   duration = Time.new - start_time
#   puts "#{block_description}: #{duration} seconds"
# end


def profile block_description, &block
  profiling_on = false
  if profiling_on
    start_time = Time.new
    block.call

    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

# profile 'count' do
#   number = 1
#   25000.times do
#     number = number + number
#   end
#
# puts "#{number.to_s.length} digits"
# end
#
# profile 'count to a million' do
#   number = 0
#   100000.times do
#     number = number + 1
#   end
# end
