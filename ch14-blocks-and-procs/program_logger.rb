def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  block_call = block.call
  puts "...#{desc.inspect} finished, returning: #{block_call}"
end

program_log 'outer block' do
  program_log 'some little block' do
  	5
  end
end

program_log 'yet another block' do
  'I like Thai food!'
  false
end