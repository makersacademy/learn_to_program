$nesting_depth = 0

def log desc, &block

  indent = ' ' * $nesting_depth

  puts indent + 'Beginning "' + desc + '"...'

  $nesting_depth = $nesting_depth + 1
  x = block.call

  $nesting_depth = $nesting_depth - 1
  puts '..."' + desc + '" finished, returning: ' + x.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
  end
  42
end

  log 'yet another block' do
    'I love Indian food!'
  end
  false
end
