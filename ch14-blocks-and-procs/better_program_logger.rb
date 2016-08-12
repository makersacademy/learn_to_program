# for each further nesting in a block, indents lines

# global variable '$nesting_depth' determines indent value
$nesting_depth = 0

def better_log(desc, &block)
  # empty space * indent, then string
  puts (" " * $nesting_depth) + "Beginning \"#{desc}\"..."
  # increase indent
  $nesting_depth += 1
  # result of blocks being called (i.e. return values) stored for after 
  # decreasing indent
  result = block.call
  # decrease indent
  $nesting_depth -= 1
  puts (" " * $nesting_depth) + "...\"#{desc}\" finished, returning: #{result}"
end

# things happen in method above according to order they're called below
better_log('outer block') do
  better_log('some little block') do
    better_log('teeny-tiny block') do
      "lots of love"
    end
    42
  end
  better_log('yet another block') do
    'I love Indian food!'
  end
  0 == 0
end