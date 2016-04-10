$level = 0
def better_log desc, &block
  puts " " * $level + "Beginning #{desc.inspect}..."
  $level += 1
  output = block.call
  $level -= 1
  puts " " * $level + "...#{desc.inspect} finished, returning: #{output}"
end