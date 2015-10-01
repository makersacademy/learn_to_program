def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    5
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  false
end  
