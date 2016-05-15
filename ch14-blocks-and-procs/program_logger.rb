def program_log(desc, &block)
  puts "Beginning \"#{desc}\"..."                            # => nil, nil
  result = block.call                                        # => 5, false
  puts "...\"#{desc}\" finished, returning: " + result.to_s  # => nil, nil
end                                                          # => :program_log

program_log('outer block') do
  program_log ('some little block') do
    (2.5 * 2).to_i                      # => 5
  end                                   # => nil
  false                                 # => false
end                                     # => nil

# >> Beginning "outer block"...
# >> Beginning "some little block"...
# >> ..."some little block" finished, returning: 5
# >> ..."outer block" finished, returning: false
