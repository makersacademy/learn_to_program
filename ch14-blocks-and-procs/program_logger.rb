def log(desc, &block)
  puts "Beginning '#{desc}'..."
  result = block.call
  puts "...'#{desc}' finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do 1 + 1 + 1 + 1 + 1 end
  log 'yet another block' do 'I like Thai food!' end
  false
end
