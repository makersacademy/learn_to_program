$nesting_depth = 0

def log desc, &block
  indent = ' ' * $nesting_depth
  puts indent + 'Beginning "' + desc + '"...'
  $nesting_depth += 1
  result = block.call
  $nesting_depth -= 1
  puts indent + '..."' + desc + '" finished, returning: '
  puts indent + result.to_s
end

log 'outer block' do

  log 'some little block' do

    log 'teeny-tiny block' do
    "lots of love"
  end
  42
end

  log 'yet another block' do
    "I love Indian food!"
  end

  true

end
