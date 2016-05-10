def profile block_description, &block
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
end

profile 'permutation' do str = 'aabbccddeeff'
  100000.times do
    str.split.permutation
  end
end
puts
profile 'count to a million TIMES' do number = 0
  1000000.times do
    number = number + 1
  end
end

profile 'count to a million WHILE' do number = 0
  i = 0
  while i < 1000000
    i += 1
  end
end