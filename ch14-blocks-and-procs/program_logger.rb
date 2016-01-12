# ok think I've got it.  However, CPs soln fails rspec (but code runs ok in terminal)

# this is the method

def log (desc, &block)
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s  # to_s because somelittleblock runs integer code?
end


# is this the call - proc method (log + desc + block) + inner block?  

log 'outer block' do #  'outer block'  = desc?
  log 'some little block' do # 'somelittleblock' = desc of inner block
    1**1 + 2**2  #&block
  end

  log 'yet another block' do  #'yetanotherblock' = desc of another inner bock
    '!doof iahT ekil I'.reverse  # &block
  end

  '0' == 0  # why is this needed, ,is this a wrap up 'else' statement?
end

# so description names can be a string of words vs one word?




