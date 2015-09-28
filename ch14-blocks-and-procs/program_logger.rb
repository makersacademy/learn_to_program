def log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block.call
  puts "...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block'
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end