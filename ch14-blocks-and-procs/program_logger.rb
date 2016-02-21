def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result.to_s}"
end

program_log 'outer_block' do
  program_log 'some little block' do
    1+4
  end

  program_log 'yet another block' do
    'i like Thai food!'.capitalize
  end
  '0' == 0
end