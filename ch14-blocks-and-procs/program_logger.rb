def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s

end

program_log 'animal block' do
  color = 'red'
  animal = 'cow'

  program_log 'math block' do
    1+2
  end

  program_log 'annoying block' do
    'Ding! Dong! Ding! Dong!'
  end
  color.length == animal.length
end
