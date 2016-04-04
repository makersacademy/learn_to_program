def log desc, &block

  prefix = ' '*$logger_depth
  puts prefix + 'Beginning "' + desc + '"...'
  $logger_depth = $logger_depth + 1
  result = block.call

  $logger_depth = $logger_depth - 1

  puts prefix + '..."' + desc + '" finished, returning: ' + result

end
