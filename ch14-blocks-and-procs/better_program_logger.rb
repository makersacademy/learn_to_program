$indent = 0

def better_log desc, &block
  prefix = " " * $indent
  puts prefix + 'Beginning "' + desc + '"...'
  $indent += 1
  outcome = block.call
  $indent -= 1
  puts prefix + '..."' + desc + '" finished, returning: ' + outcome.to_s
end
