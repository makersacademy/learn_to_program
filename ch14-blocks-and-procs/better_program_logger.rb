$logger_depth = 0

def boom desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'
  $logger_depth = $logger_depth + 1
  result = block.call
  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

boom 'outer block' do
  boom 'some little block' do
    boom 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2
  end

  boom 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end