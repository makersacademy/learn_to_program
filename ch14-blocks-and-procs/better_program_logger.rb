$logger_depth = 0

def better_log desc, &block
  prefix = ' '*$logger_depth
  puts prefix + "Beginning #{desc.inspect}..."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts prefix+"...#{desc.inspect} finished, returning: #{result}"
end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      "I love Pizza!"
    end
    100*123
  end

  better_log 'yet another block' do
    "!!taht tae t'noD".reverse
  end
  0 == 0
end
