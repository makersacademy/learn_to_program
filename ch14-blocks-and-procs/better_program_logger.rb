$depth = 0

def better_log desc, &block
  indent = ' ' * $depth

  puts indent + 'Beginning "' + desc + '"...'
  $depth += 1
  result = block.call

  $depth -= 1
  puts indent + '..."' + desc + '" finished, returning: ' + result.to_s

end

better_log 'animal block' do
  color = 'red'
  animal = 'cow'

  better_log 'math block' do
    better_log 'time block' do
      time = Time.new
      time
    end
    1+2
  end

  better_log 'annoying block' do
    'Ding! Dong! Ding! Dong!'
  end
  color.length == animal.length
end
