def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + "#{result}"
end

program_log 'outer_block' do
  program_log 'some_little_block' do
    4 + 1
  end
program_log 'yet another block' do
    'I like Indian food!'
  end
  "0" == 0
end
