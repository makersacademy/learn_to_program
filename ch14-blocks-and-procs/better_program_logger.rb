$depth = 0
def better_log(block_desc, &block)
  nesting = " " * $depth
  puts nesting + 'Beginning "' + block_desc  + '"...'
  $depth = $depth + 1
  result = block.call
  $depth = $depth - 1
  puts nesting + '..."' + block_desc  + '" finished, returning: ' + result.to_s
end

better_log("outer block") do
  better_log("some little block") do
    better_log("teeny-tiny block") do
    "lots of love"
    end
    6 * 7
  end
    better_log("yet another block") do
    "I love Indian food!"
    end
  true
end