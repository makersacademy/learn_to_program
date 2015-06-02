def log description, &block
  puts "'#{description}' started..."
  x = block.call.to_s
  puts "'#{description}' complete. Return value: " + x 
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
  
