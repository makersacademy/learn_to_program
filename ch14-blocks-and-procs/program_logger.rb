def log desc, &block
  puts "Starting '#{desc}'..."
  to_return = block.call
  puts "Finished '#{desc}', it returned '#{to_return.to_s}'"
end


log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end
