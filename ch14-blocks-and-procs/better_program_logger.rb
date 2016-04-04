$level = 0
def log desc, &block
  p " "*$level + "Beginning #{desc.inspect}..."
  $level += 1
  output = block.call
  $level -= 1
  p " "*$level + "#{desc.inspect} finished, returning: #{output}"
end