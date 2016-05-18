def log desc, &block
puts 'Beginning "' + desc + '"...'
block.call
puts '..."' + desc + '" finished, returning: ' + block.call.to_s
end

log 'outer block' do
  log 'some little block' do
    5
  end
end

log 'yet another block' do
  log 'some little block' do
    'I like Thai food!'
  end
  false
end