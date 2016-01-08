def log desc, &block
  $logger_depth = 0
    first = ' ' * $logger_depth
    puts first + 'Beginning "' + desc + '"...'
    $logger_depth = $logger_depth + 1
    result = block.call
    $logger_depth = $logger_depth - 1
    puts first + '..."' + desc + '" finished, returning: ' + result.to_s
  end

  log 'outer block' do
    log 'some little block' do
      log 'teeny-tiny block' do
        "lots of love"
      end
    end
    42
    end

    log 'yet another block' do
      'I love Indian food!'
    end
    true
  end
end
