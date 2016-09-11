$indent = 0
def better_log desc, &block
  prefix = ' '*$indent
  puts prefix + 'Beginning "' + desc + '"...'
  $indent = $indent + 1
  result = block.call
  $indent = $indent - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + "#{result}"
end

better_log 'outer block' do
  better_log 'some little block' do
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
