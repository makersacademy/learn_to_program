$nesting_depth = 0
$space = ' '

def log desc, &block
  
  puts $space*$nesting_depth + 'Beginning "' + desc + '" ...'
  $nesting_depth = $nesting_depth + 1
  value_returned = block.call
  $nesting_depth = $nesting_depth - 1 
  puts $space*$nesting_depth + '... "' + desc + '" finished, returning: '
  puts $space*$nesting_depth + value_returned.to_s
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
    true
  end