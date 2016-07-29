$indent_size = 0

def log desc, &block
  indent = "   "*$indent_size
  puts indent + "Beginning #{desc}..."
  $indent_size += 1
  output = block.call
  puts indent + "... #{desc} finished, returning #{output}"
end
