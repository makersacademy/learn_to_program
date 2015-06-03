$log_depth = 0

def log description, &block
  prefix = '  '*$log_depth
  puts prefix + 'beginning "' + description + ' "...'
  $log_depth = $log_depth + 1
  result = block.call
  $log_depth = $log_depth - 1
  puts prefix + '..."' + description + '" finished, returning: ' + result.to_s
end 

log 'first block' do 
  log 'second block' do
    'I\'m the result of the second block'
  end
  log 'third block' do
    'Hi, I\'m the result of the third block'
  end
  'I\'m the result of the first block'
end