$indent_log = 0

def better_log desc, &block
  ind = ' '*$indent_log 
  puts ind + "Beginning #{desc.inspect}..."
  $indent_log += 1
  out = block.call
  $indent_log -= 1
  puts ind + "...#{desc.inspect} finished, returning: #{out}"  
end



better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end

  better_log 'yet another block' do
    'I love Indian Food!'
  end
  !false
end