$logger_depth = 0  # Global variable

def better_log desc, &block  # proc method name = log, takes args including a proc = &block
  prefix = ' '*$logger_depth  # new var to store current logger_depth, which at beginning, has a depth of 0?

  puts prefix + 'Beginning "' + desc + '"...'

  $logger_depth = $logger_depth + 1
  
  result = block.call

  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log 'outer block' do
  better_log 'some little block' do # nested blocks
    better_log 'teeny-tiny block' do  # nested blocks
      'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2
  end

  better_log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end

  '0' == "0"  # still not getting this...!
end

# mmmm, lack of context has not helped - why would you do this in the real-world?  Going to practice this one in pairing.