  $nesting_depth = 0

def better_log desc, &block

indent = " " * $nesting_depth
  puts indent + "Beginning #{desc.inspect}..."
  $nesting_depth += 1
  a = block[]
  $nesting_depth -= 1
  puts indent + "...#{desc.inspect} finished, returning: #{a}"
end
