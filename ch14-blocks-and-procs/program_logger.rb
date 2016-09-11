def log desc, &block
  puts 'Beginning "' + desc + '" . . .' 
  value_returned = block.call
  puts '. . . "' + desc + '" finished, returning: ' + value_returned.to_s
end
  
log 'outer block' do
    log 'some little block' do
    5
  end
  
  log 'yet another block' do
    'I like Thai food!'
  end
  false
end