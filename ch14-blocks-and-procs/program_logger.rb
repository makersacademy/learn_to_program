
def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    puts 'Output is..' + (1**1 + 2**2).to_s
  end

  log 'yet another block' do
    '!siht teg ton od I'.reverse
  end

  '0' == 0
end