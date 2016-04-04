def profile block_description, &block
  # To turn profiling on/off, set this
  # to true/false.
  $OPT_PROFILING_ON = true
  if $OPT_PROFILING_ON == true
    start_time = Time.new
    block.call

    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end


profile 'block' do
  (2+3)
end
