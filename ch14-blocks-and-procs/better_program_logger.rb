$big_top_pee_wee = 0
def better_log desc, &block
  puts ' '*$big_top_pee_wee+"Beginning #{desc.inspect}..."
  $big_top_pee_wee += 1
  block_call = block.call
  $big_top_pee_wee -= 1
  puts ' '*$big_top_pee_wee+"...#{desc.inspect} finished, returning: #{block_call}"
end

better_log 'outer block' do
  better_log 'some little block' do
  	better_log 'tenny-tiny block' do
  		'lots of love'
    end
  end
  42
end

better_log 'yet another block' do
  'I like Thai food!'
  false
end