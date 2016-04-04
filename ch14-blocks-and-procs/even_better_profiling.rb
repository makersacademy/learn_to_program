

def profile block_description, &block
  # your code here
profileon = false
if profileon == true
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

end

