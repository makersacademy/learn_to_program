$depth = 0

def log desc, &block
  nesting_depth = ' ' * $depth
  puts nesting_depth + "Beginning \"#{desc}\"..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts nesting_depth + "...\"#{desc}\" finished, returning: #{result}"
end

# log 'outer block' do
#   log 'some little block' do
#     log 'teeny block' do
#       'lots of loVE'.downcase
#     end

#     7*3*2
#   end
#   log 'yet another block' do
#     '!doof naidnI evol I'.reverse
#   end
#   '0' == "0"
# end