def program_log (desc, &block)
  puts 'Beginning "' + desc + '"...'
  returned = block.call
  puts '..."' + desc + '" finished, returning: ' + returned.to_s
end

program_log 'outer block' do
  program_log 'inner block' do
    'There\'s a starman waiting in the sky'
  end
end