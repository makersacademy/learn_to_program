def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  output = block.call
  puts '..."' + desc + '" finished, returning: ' + output.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
    5
  end

  log 'yet another block' do
    "I like Thai food!"
  end
  16 == 8*2
end
