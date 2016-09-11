$depth = 0

def better_log desc, &block
  prefix = ' '*$depth
  puts prefix + 'Beginning "' + desc + '"...'
  $depth = $depth + 1
  result = block.call
  $depth = $depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + "#{result}"
end

better_log 'outer_block' do
  better_log 'some_little_block' do
      better_log 'teen-tiny block' do
          'lots of love'
      end
      42
  end
better_log 'yet another block' do
    'I like Indian food!'
  end
  "0" == 0
end
