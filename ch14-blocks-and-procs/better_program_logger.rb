$depth = 0

def log desc, &block
  puts ' ' * $depth + 'Beginning "' + desc + '"...'
  $depth += 1
  result = block.call
  $depth -= 1
  puts ' ' * $depth + '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    5
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  false
end
