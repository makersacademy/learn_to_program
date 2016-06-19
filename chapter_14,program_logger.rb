def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do #we call the method 
  log 'some little block' do # we call the method again (wrapped)
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse #reverse is the easiest. .downcase would take longer as not all words are either in capital letters or in small letters
  end

  '0' == 0
end


# it is hard to see how  deep we are, how many inner blocks are there