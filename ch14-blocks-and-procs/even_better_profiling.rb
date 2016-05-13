def profile block_description, &block
  exit # addition or removal of keyword exit stios or executes the program
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end                                                 # => :profile

profile '25000 doublings' do
  number = 1
  25000.times do
      number = number + number
  end
end
