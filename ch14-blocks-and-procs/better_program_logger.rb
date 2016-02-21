$indent = 0

def better_log desc, &block
  nesting = ' '*$indent
  puts "#{nesting}Beginning \"#{desc}\"..."
    $indent += 1
  result = block.call
    $indent -= 1
  puts "#{nesting}...\"#{desc}\" finished, returning: #{result.to_s}"
end



better_log 'outer_block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lOts oF lOVE'.downcase
    end
    7 * 3 * 2
  end

  better_log 'yet another block' do
    'i love Indian food!'.capitalize
  end
  '0' == "0"
end