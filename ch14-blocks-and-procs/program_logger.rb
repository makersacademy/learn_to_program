
def log desc, &block
  puts "Beginning #{desc.inspect}..."
  # inspect is used more for debugging and
  # to_s for end-user or display purposes.
  result = block[] #here inserting what is returned
  # from the block into result variable.
  puts "...#{desc.inspect} finished, returning: #{result}"
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
