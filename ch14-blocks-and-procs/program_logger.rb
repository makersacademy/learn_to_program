def program_log desc, &block
  puts "Beginning #{desc.inspect}..." #inspect is used more for debugging and to_s for end-user or display purposes.
  result = block[] #here inserting what is returned from the block into result variable.
  puts "...#{desc.inspect} finished, returning: #{result}"
end

program_log 'outer block' do
  program_log 'some little block' do
    1**1 + 2**2
  end

  program_log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end
  
  '0' == 0
end