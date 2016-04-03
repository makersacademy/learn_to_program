def log desc, &block
  puts "Beginning #{desc.inspect}..."
call = block[]

  puts "...#{desc.inspect} finished, returning:   #{call}"

end

log 'outer block' do
  log 'some little block' do
    5
  end

log 'yet another block' do
  puts 'I like Thai food!'
end

'0' == 0
end




