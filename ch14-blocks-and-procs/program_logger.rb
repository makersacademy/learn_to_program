def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
    5
  end

  program_log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  false
end
