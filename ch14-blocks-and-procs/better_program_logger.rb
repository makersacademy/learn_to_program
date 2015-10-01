$depth = 0

def better_log desc, &block
  puts ' ' * $depth + 'Beginning "' + desc + '"...'
  $depth += 1
  result = block.call
  $depth -= 1
  puts ' ' * $depth + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log 'outer block' do
  better_log 'some little block' do
    5
  end

  better_log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  false
end
