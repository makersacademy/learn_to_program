def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  return_val = block.call
  puts "...\"#{desc}\" finished, returning: #{return_val}"
end

#program_log 'outer block' do
#  program_log 'inner block' do
#    1+1
#  end
#  true
#end

