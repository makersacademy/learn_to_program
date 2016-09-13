$logger_depth = 0

def better_log desc, &block
  prefix = '      '*$logger_depth

  puts prefix +"Beginning #{desc} ... "
  $logger_depth = $logger_depth + 1

    answer = block.call
    $logger_depth = $logger_depth - 1

    puts prefix +"....#{desc} finished, returning: #{answer}"


  end

  better_log 'outer block' do
    better_log 'some little block' do
      2+3
    end
    better_log 'yet another block' do
      'hello'.reverse
    end
    '0' == 0

  end
