def program_log desc, &block #the method takes the desc sting and the block
  puts "Beginning #{desc.inspect}..."
  results = block[] #this calls the code that is to be logged
  puts "...#{desc.inspect} finished, returning: #{results}" #returns the blocks result
end

program_log 'outer block' do #calling the bigger block (or first block)
  program_log 'some little block' do
    2+3
  end
=begin This is my practice block
  program_log 'smaller block' do #calling the 1st of the secondary blocks
    birth_second = Time.local(1990, 05, 26, 16, 37, 20) #the code of the block
    billion_seconds = birth_second + 1000000000
  end
=end

  program_log 'one more block' do #calling the 2nd of the secondary blocks
    '!doof iahT ekil I'.reverse.upcase #the code of the block
  end

  '0' == 0
end
