def log (desc, &block)
  puts 'Beginning "' + desc + '"...'
  output = yield
  puts '..."' + desc + '" finished, returning:'
  puts output.to_s
end

log 'outer block' do
  log 'some little block' do
    (24 + 1) / 5
  end
  log 'yet another block' do
    'I like' << '!doof iahT '.reverse
  end
  Time.new == Time.gm(2016, 5, 12)
end
