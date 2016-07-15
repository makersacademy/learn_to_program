$nesting_depth = 0

def better_log(desc)
  indent = ' ' * $nesting_depth
  puts indent + 'Beginning "' + desc + '"...'
  $nesting_depth += 1
  output = yield
  $nesting_depth -= 1
  puts indent + '..."' + desc + '" finished, returning: ' + output.to_s
end

# better_log 'outer block' do
#   better_log 'some little block' do
#     better_log 'teeny-tiny block' do
#       'lots of love'
#     end
#     24 + 18
#   end
#   lbetter_log 'yet another block' do
#     'I love' << '!doof naidnI '.reverse
#   end
#   5**5 == 25
# end
