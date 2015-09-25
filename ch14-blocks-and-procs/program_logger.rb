def log desc, &block
  puts 'Beginning "' +desc+ '"...'
  result = block.call
  puts '..."' +desc+ '" finished, returning: ' + result.to_s
end
#so many tweaks just to please the RSPEC ^^
log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end
  log 'yet another block' do 
    '!doof iahT ekil I'.reverse
  end
  '0' == 0 
end
# say_potato = log 'proc1' do
#   say_tomato = log 'proc2' do
#     'OMFG TOMATO'
#   end
#   'OMFG POTATO'
  
# end
