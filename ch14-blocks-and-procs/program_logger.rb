def program_log desc, &block
  puts 'Beginning "'+desc+'"...'
  result = block.call
  puts '..."'+desc+'" finished, returning: ' +result.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
    10 / 2
  end

  program_log 'yet another block' do
    'I like Thai food!'
  end
  false
end
