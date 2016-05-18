$start = 0

def log desc, &block
  puts ' '* $start + 'Beginning "' + desc + '"...'

  $start += 1
  block.call
  $start -= 1

  puts ' '*$depth + '..."' + desc + '" finished, returning: ' + block.call.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end

  log 'yet another block' do
    'I love indian food!'
  end
  true
end
