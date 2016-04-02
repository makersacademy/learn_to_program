$deepness = 0

def better_log desc, &block
  prefix = " " * $deepness
  puts prefix + "Beginning #{desc.inspect}..."
  $deepness += 1
  returned = block[]
  $deepness -= 1
  puts prefix + "...#{desc.inspect} finished, returning: #{returned}"
end
