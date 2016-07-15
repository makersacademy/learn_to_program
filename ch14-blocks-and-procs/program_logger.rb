def log desc, &block
  # your code here
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'first block' do
  log 'first inner block' do 
    1**1 + 2**2
  end

  log 'second block' do
    "finished 'learn to program' (well, ish)!!".upcase
  end

  '0' == 0 
end