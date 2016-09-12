$nesting_depth = 0

def better_log desc, &block

  indent = ' ' * $nesting_depth

  puts indent + 'Beginning "' + desc + '"...'

  $nesting_depth = $nesting_depth + 1
  x = block.call

  $nesting_depth = $nesting_depth - 1
  puts indent + '..."' + desc + '" finished, returning: ' + x.to_s
end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lots of love'
  end
  42
end

  better_log 'yet another block' do
    'I love Indian food!'
  end
  false
end
