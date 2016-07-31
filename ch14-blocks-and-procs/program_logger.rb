def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
    1**1 + 2**2  #return of some little block
  end

  program_log 'yet another block' do
    '!doof iahT ekil I'.reverse #return of yet another block nested within out block
  end

  '0' == 0 # end of outerblock, '0' does not equal 0 so returns false
end
