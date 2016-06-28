def program_log str, &block
  puts 'Beginning "' + str + '"...'
  result = block.call
  puts '..."' + str + '" finished, returning: ' + result.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
   5
  end

  program_log 'yet another block' do
    ["I", "like", "Thai", "food!"].join(" ")
  end

  false
end
