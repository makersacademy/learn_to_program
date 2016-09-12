$logger_depth = 0

def better_log desc, &block
    prefix = ' '*$logger_depth

    puts prefix + 'Beginning "' + desc + '"...'
    $logger_depth += 1
    result = block.call
    $logger_depth -= 1
    puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log 'outer block' do
  better_log'some little block' do
    better_log 'teeny-tiny block' do
        'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2

  end

  better_log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end
