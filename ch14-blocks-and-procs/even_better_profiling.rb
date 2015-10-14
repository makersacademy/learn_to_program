def profile block_description, &block
  profile_block = true

  if profile_block
    start_time = Time.new

    block.call

    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile( "Simple arithemtic") {1_000_000.times{1+1}}