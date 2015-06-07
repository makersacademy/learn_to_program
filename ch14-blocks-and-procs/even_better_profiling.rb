def profile block_description, &block

  profile_on = false

  if profile_on == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} in seconds"
  else
    block.call
  end

end

# profile 'count a mil' do
#   profile_on = true
#   number = 0
#   1000000.times do
#     number += 1
#   end
# end
