$level = 0

def log desc, &block
  indent = " "
  puts indent*$level+"Beginning #{desc.inspect}..."
  $level += 1
  retval = block[]
  $level -= 1
  puts indent*$level+"...#{desc.inspect} finished, returning: #{retval}"
end

