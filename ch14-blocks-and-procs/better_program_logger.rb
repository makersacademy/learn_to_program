$nesting_depth = 0
$indent = '  '

def log desc, &block
  puts "#{$indent * $nesting_depth}Beginning \"" + desc + "\"..."
  output = yield
  puts "#{$indent * $nesting_depth}...\"" + desc + '" finished, returning:'
  puts "#{$indent * $nesting_depth}#{output.to_s}"
  $nesting_depth += 1
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
