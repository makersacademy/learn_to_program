def log str, &block
  puts 'Beginning "' + str + '"...'
  result = block.call
  puts '..."' + str + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
   5
  end

  log 'yet another block' do
    ["I", "like", "Thai", "food!"].join(" ")
  end

  false
end
