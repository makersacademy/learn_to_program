def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + "\n" + result.to_s
end

log 'outer block' do
  log 'some little block' do
    3+2
  end

  log 'yet another block' do
    'I like Thai food!'
  end

  5 == 0
end



