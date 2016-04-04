def log desc, &block
  # your code here
  $logger_depth = 0

def log desc, &block
  prefix = ' '*$logger_depth
  puts prefix + "Beginning #{desc.inspect}..."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts prefix+"...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end

  log 'yet another block' do
    'I love Indian food!'
  end
  false
end
end
