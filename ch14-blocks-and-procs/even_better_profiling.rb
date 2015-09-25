def profile block_description, &block

  switch = true
  if switch
    start = Time.new
    block.call
    duration = Time.new - start
    puts "#{block_description}: #{duration} potatos"
  else
    block.call
  end
end



profile 'potato counter' do 
  number = 0
  1000000.times do
    number = number + 1
  end
end
