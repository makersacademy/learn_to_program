$nesting_depth = 0

def better_log desc, &block
  puts "#{' '*$nesting_depth}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  result = block.call
  $nesting_depth -= 1
  puts "#{' '*$nesting_depth}...\"#{desc}\" finished, returning: #{result}"
end


better_log 'foo' do
  better_log 'bar' do
    puts 'Jump around'
    'cabbage'
  end
  puts "I'm the king of the castle"
  'parsnips'
end