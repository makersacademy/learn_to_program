def program_log desc, &block

  puts "Beginning \"#{desc}\"..."
  answer = block.call

  puts "...\"#{desc}\" finished, returning: #{answer}"
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
