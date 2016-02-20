def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
end

program_log 'outer block' do
  program_log 'some little block' do

    program_log 'yet another block' do
     '!doof iahT ekil I'.reverse
    end
      1**1 + 2**2
    end
'0' == 0
 end