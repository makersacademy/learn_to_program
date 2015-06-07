$logger_depth = 0
def log desc, &block
prefix = ' '*$logger_depth
  puts prefix + 'Beginning "' + desc + '"...'
  $logger_depth = $logger_depth + 1
(from on page 120)
Exercises from Chapter 14 • 165
Beginning "outer block"...
Beginning "some little block"...
..."some little block" finished, returning:  5
Beginning "yet another block"...
..."yet another block" finished, returning:  I like Thai food!
..."outer block" finished, returning:  false
Beginning "outer block"...
Beginning "some little block"...
..."some little block" finished, returning:  5
Beginning "yet another block"...
..."yet another block" finished, returning:  I like Thai food!
..."outer block" finished, returning:  false
￼￼
  result = block.call
  $logger_depth = $logger_depth - 1
puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s end
log 'outer block' do
log 'some little block' do
log 'teeny-tiny block' do 'lOtS oF lOVe'.downcase
end
7*3*2
end
log 'yet another block' do '!doof naidnI evol I'.reverse
end
'0' == "0" end
