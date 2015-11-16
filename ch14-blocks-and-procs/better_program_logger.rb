$depth = 0

def log desc, &block
  prefix = " "*$depth
  puts prefix+"Beginning #{desc.inspect}..."
  $depth += 1
  result = block.call
  $depth -= 1
  puts prefix+"...#{desc.inspect} finished, returning: #{result}"
end
