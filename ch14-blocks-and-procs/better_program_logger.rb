# This programme notifies you when it starts/ends the block
# that was passed in. Also tells you what the block returned

# Better version indents the output according to the deapth of the block
$block_depth = 0

def better_log desc, &block
  puts " "*$block_depth + "Beginning \"#{desc}\"..."
  $block_depth += 1
  value = block.call
  $block_depth -= 1
  puts " "*$block_depth + "...\"#{desc}\" finished, returning: #{value}"
end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lots of love'
    end
    7 * 6
  end
  better_log 'yet another block' do
    'I love Thai food!'
  end
  false
end
