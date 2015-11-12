$nesting_depth = 0
def better_log desc, &block
prefix = " " * $nesting_depth
puts prefix + "Beginning \"#{desc}\"..."
$nesting_depth += 1
returned = block.call
$nesting_depth -= 1
puts prefix + "...\"#{desc}\" finished, returning: #{returned}"
end

block2 = Proc.new { 2 + 3 }
block3 = Proc.new {'I like Thai food!'}
block1 = Proc.new do
  better_log 'some little block', &block2
  better_log 'yet another block', &block3
  false
end

better_log 'outer block', &block1
