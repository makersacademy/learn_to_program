$nesting_depth = 0        # outside of program so it doesn't reset depth to 0

def better_log desc, &block

  prefix = " " * $nesting_depth
  puts prefix + 'Beginning "' + desc + '"...'
  $nesting_depth += 1
  result = block.call
  $nesting_depth  -= 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end


better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'LOTS OF LOVE'.downcase
    end
      7 * 6
  end

  better_log 'yet another block' do
    "I love Indian food!"
  end

  1 == 1
end