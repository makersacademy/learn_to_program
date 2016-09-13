def log desc, &block

puts "Beginning #{desc} ... "
answer = block.call
puts "#{desc} finished, returning:"
puts answer

end

log 'outer block' do
  log 'some little block' do
    2+3
  end
  log 'yet another block' do
    'hello'.reverse
  end
  '0' == 0

end
