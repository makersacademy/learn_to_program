def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  puts "...#{desc.inspect} finished, returning: #{block.call}"
end

program_log 'outer block' do
  program_log 'some little block' do
    5
  end
  program_log 'yet another block' do
    'I love Thai food!'
  end
  1 == 0
end
