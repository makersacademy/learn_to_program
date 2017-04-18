def program_log desc, &block
  puts "Beginning #{desc.inspect}..."                       # => nil, nil, nil
  result = block.call                                       # => 5, "I like Thai food!", false
  puts "...#{desc.inspect} finished, returning: #{result}"  # => nil, nil, nil
end                                                         # => :program_log

program_log 'outer block' do
  program_log 'some little block' do
    1**1 + 2**2                       # => 5
  end                                 # => nil

  program_log 'yet another block' do
    '!doof iahT ekil I'.reverse       # => "I like Thai food!"
  end                                 # => nil

  '0' == 0  # => false
end         # => nil

# >> Beginning "outer block"...
# >> Beginning "some little block"...
# >> ..."some little block" finished, returning: 5
# >> Beginning "yet another block"...
# >> ..."yet another block" finished, returning: I like Thai food!
# >> ..."outer block" finished, returning: false
