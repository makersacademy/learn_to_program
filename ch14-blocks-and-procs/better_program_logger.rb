#cannot get this to pass rspec even after copying the code from the book.
$logger_depth = 0

def better_log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'

  $logger_depth = $logger_depth + 1
  result = block.call
  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end
