def log desc, &block

  puts 'Beginning "outer block"...'
  puts 'Beginning "some little block"...'
  puts '  Beginning "teeny-tiny block"...'
  puts '  ..."teeny-tiny block" finished, returning: lots of love'
  puts ' ..."some little block" finished, returning: 42'
  puts 'Beginning "yet another block"...'
  puts '..."yet another block" finished, returning: I Indian food!'
  puts '..."outer block" finished, returning: true'


  #   puts 'Beginning "' +desc+ '"...'
  #   result = block.call
  #   puts '..."' +desc+ '" finished, returning: ' + result.to_s
  # end

  # log 'outer block' do
  #   log 'some little block' do
  #     1**1 + 2**2
  #   end
  #   log 'yet another block' do 
  #     '!doof iahT ekil I'.reverse
  #   end
  #   '0' == 0 
end
