$indent = 0
def program_logger desc, &block
  prefix = ' '*$indent
  puts prefix + 'Beginning "' + desc + '"...'
  $indent = $indent + 1
  result = block.call
  $indent = $indent - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + "#{result}"
end

program_logger 'outer block' do
  program_logger 'some little block' do
    program_logger 'teen-tiny block' do
      'lots of love'
    end
    42
  end
  program_logger 'yet another block' do
    'I like Indian food!'
  end
  "0" == 0
end
