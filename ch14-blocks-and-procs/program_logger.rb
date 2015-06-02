def log desc, &block
  puts "'#{desc}' started..."
  x = block.call.to_s
  puts "'#{desc}' complete. Return value: " + x 
end

log 'outer block' do 
  log  'inner block' do
    1000
  end

  log 'another inner block' do
    10000000
  end

  'done'
end
  
