def program_log desc, &block
    puts "Beginning \"#{desc}\"..."
    result = block.call
    puts "...\"#{desc}\" finished, returning: #{result}"

end

# program_log 'outer block' do
#   program_log 'some little block' do
#      'hello'
#   end
#   program_log 'yet another block'do
#      'goodbye'
#   end
#    false
# end
