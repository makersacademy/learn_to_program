$index = 0  # => 0

def better_log(desc, &block)
  indent = ' ' * $index       # => "", " ", "  ", " "

  puts indent + 'Beginning "' + desc + '"...'                            # => nil, nil, nil, nil
  $index += 1                                                            # => 1, 2, 3, 2
  result = block.call                                                    # => "lots of love", 42, "I love Indian food!", false
  $index -= 1                                                            # => 2, 1, 1, 0
  puts indent + '..."' + desc + '" finished, returning: ' + result.to_s  # => nil, nil, nil, nil
end                                                                      # => :better_log

better_log('outer block') do
  better_log('some little block') do
    better_log('teeny-tiny block') do
      "lots of love"                   # => "lots of love"
    end                                # => nil
    42.to_i                            # => 42
  end                                  # => nil

  better_log 'yet another block' do
    "I love Indian food!"            # => "I love Indian food!"
  end                                # => nil

  false  # => false
end      # => nil

# >> Beginning "outer block"...
# >>  Beginning "some little block"...
# >>   Beginning "teeny-tiny block"...
# >>   ..."teeny-tiny block" finished, returning: lots of love
# >>  ..."some little block" finished, returning: 42
# >>  Beginning "yet another block"...
# >>  ..."yet another block" finished, returning: I love Indian food!
# >> ..."outer block" finished, returning: false
