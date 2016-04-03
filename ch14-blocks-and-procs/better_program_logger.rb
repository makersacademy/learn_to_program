$layer = 0
def better_log desc, &block
  puts " " * $layer + "Beginning #{desc.inspect}..."
  $layer += 1
  result = block.call
  $layer -= 1
  puts " " * $layer + "...#{desc.inspect} finished, returning: #{result}"
end

