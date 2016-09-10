$nesting_depth = 0

def better_log desc, &block
  puts (" " * $nesting_depth) + "Beginning #{desc.inspect}..."
  $nesting_depth +=1
  answer = block[]
  $nesting_depth -=1
  puts (" " * $nesting_depth) + "...#{desc.inspect} finished, returning: #{answer}"
end
