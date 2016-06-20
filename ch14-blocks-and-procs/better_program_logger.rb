$nesting_depth = 0

def better_log desc, &block

  depth = ' ' * $nesting_depth
  puts depth + 'Beginning "' + desc + '"...'

  $nesting_depth += 1
  call = block.call
  $nesting_depth -= 1

  puts depth + '..."' +  desc + '" finished, returning: ' + call.to_s

end
