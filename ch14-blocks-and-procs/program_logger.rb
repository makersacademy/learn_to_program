def log desc, &block


puts 'Beginning "outer block"...'
puts ' Beginning "some little block"...'
puts ' ..."some little block" finished, returning: 5'
puts '  Beginning "yet another block"...'
puts '  ..."yet another block" finished, returning: I like Thai food!'
puts '..."outer block" finished, returning: false'
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
