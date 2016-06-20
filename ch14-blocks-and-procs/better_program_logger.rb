def log str, &block
  puts 'Beginning "' + str + '"...'
  result = block.call
  puts '..."' + str + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lost in plov'
    end
   42
  end


  log 'yet another block' do
    ["I", "love", "Indian", "food!"].join(" ")
  end

  "Ruby" != "Java"
end
