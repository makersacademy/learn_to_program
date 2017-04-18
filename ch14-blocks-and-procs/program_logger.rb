def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block.call
  puts "...#{desc.inspect} finished, returning: #{result}"
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