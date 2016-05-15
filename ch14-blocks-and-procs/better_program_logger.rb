$count = 0

def better_log desc, &block
    puts "#{' ' * $count}Beginning \"#{desc}\"..."
    $count += 1
    result = block.call
    $count -= 1
    puts "#{' ' * $count}...\"#{desc}\" finished, returning: #{result}"
end

# program_log 'outer block' do
#   program_log 'some little block' do
#     program_log 'teeny block' do
#       'teeny'
#     end
#      'hello'
#   end
#   program_log 'yet another block'do
#      'goodbye'
#   end
#    false
# end
