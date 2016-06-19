def log desc, &block
  puts "Beginning #{desc.inspect}..."
  block.call
  puts "...#{desc.inspect} finished, returning: #{result}"

log 'outer block' do
  log 'some little block' do
    end
   result = 5
  end

  log 'yet another block' do
  result = "i love japanese food"
  end
  result = false
end
