def program_log(desc)
  puts 'Beginning "' + desc + '"...'
  output = yield
  puts '..."' + desc + '" finished, returning: ' + output.to_s
end

# program_log 'outer block' do
#   program_log 'some little block' do
#     1**1 + 2**2
#   end
#
#   program_log 'yet another block' do
#     '!doof iahT ekil I'.reverse
#   end
#
#   '0' == 0
# end
