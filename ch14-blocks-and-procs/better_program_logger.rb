$logger_depth = 0

def better_log desc, &block
  puts " "*$logger_depth + "Beginning #{desc.inspect}..."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts " "*$logger_depth + "...#{desc.inspect} finished, returning: #{result}"

end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end

  better_log 'yet another block' do
    'I like Indian food!'
  end

  '0' != 0
end
