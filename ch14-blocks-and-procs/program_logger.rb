def log desc, &block
  puts 'Beginning "' +desc+ '"...'
  result = block.call
  puts '..."' +desc+ '" finished, returning: ' + result.to_s
end

say_potato = log 'proc1' do
  say_tomato = log 'proc2' do
    'OMFG TOMATO'
  end
  'OMFG POTATO'
  
end
