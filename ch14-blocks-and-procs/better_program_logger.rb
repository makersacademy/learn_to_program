def log desc, &block
  $nesting_depth = $nesting_depth == nil ? 0 : $nesting_depth
  puts ' '*$nesting_depth + 'Beginning "' + desc + '"...'
  $nesting_depth +=1
  result = block.call
  $nesting_depth -=1

  puts ' '*$nesting_depth + '..."' + desc + '" finished, returning: ' + result.to_s
end


log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end
  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end
  '0' == 0
end
