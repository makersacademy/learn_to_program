def log description, &block
  puts 'beginning "' + description + ' "...'
  result = block.call
  puts '..."' + description + '" finished, returning: ' + result.to_s
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