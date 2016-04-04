$indent = 0

def log desc, &block
  # your code here
  prefix = ' ' * $indent
  puts prefix + 'Beginning "' + desc + '"...'
  $indent += 1
  value = block.call
  $indent -= 1
  puts prefix + '..."' + desc + '" finished, returning: ' + value.to_s

end