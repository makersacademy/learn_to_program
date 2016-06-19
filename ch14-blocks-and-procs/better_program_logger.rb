@nesting_depth = 0

def log(desc, &block)
  indent = '  ' * @nesting_depth
  puts indent + 'Beginning "' + desc + '"...'
  @nesting_depth += 1
  output = yield
  @nesting_depth -= 1
  puts indent + '..."' + desc + '" finished, returning: ' + output.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    24 + 18
  end
  log 'yet another block' do
    'I love' << '!doof naidnI '.reverse
  end
  5**5 == 25
end
