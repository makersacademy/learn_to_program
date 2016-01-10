
def better_log desc, &block
  space =  " "*$nest_depth
  puts "#{space}Beginning \"#{desc}\"..."
  $nest_depth += 1
  return_val = block.call
  $nest_depth -= 1
  space = " "*$nest_depth
  puts "#{space}...\"#{desc}\" finished, returning: #{return_val}"
end

$nest_depth = 0

#better_log 'outer block' do
#  better_log 'middle block' do
#    better_log 'inner block' do
#      1+1
#    end
#    "abc!"
#  end
#  true
#end

