def log desc, &block
  p "Beginning #{desc.inspect}..."
  output = block.call
  p "#{desc.inspect} finished, returning: #{output}"
end